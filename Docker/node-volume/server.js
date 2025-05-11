const express = require('express');
const fs = require('fs');
const path = require('path');

const app = express();
app.use(express.json());
app.use(express.static(path.join(__dirname, 'public')));

const notesFile = path.join(__dirname, 'data', 'notes.txt');

// Create the data folder & file if not exists
fs.mkdirSync(path.dirname(notesFile), { recursive: true });
if (!fs.existsSync(notesFile)) fs.writeFileSync(notesFile, '');

// Add a note (append to file)
app.post('/note', (req, res) => {
  const note = req.body.text + '\n';
  fs.appendFile(notesFile, note, err => {
    if (err) return res.status(500).send('Error writing note');
    res.send({ success: true });
  });
});

// Read all notes
app.get('/notes', (req, res) => {
  fs.readFile(notesFile, 'utf8', (err, data) => {
    if (err) return res.status(500).send('Error reading notes');
    const notes = data.trim().split('\n').filter(Boolean);
    res.send(notes);
  });
});

app.listen(3000, () => console.log('Server running on port 3000'));
