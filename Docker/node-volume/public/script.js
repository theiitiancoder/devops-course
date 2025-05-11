const form = document.getElementById("noteForm");
const input = document.getElementById("noteInput");
const list = document.getElementById("notesList");

async function fetchNotes() {
  const res = await fetch("/notes");
  const notes = await res.json();
  list.innerHTML = notes.map(note => `<div class="note">${note}</div>`).join('');
}

form.addEventListener("submit", async e => {
  e.preventDefault();
  await fetch("/note", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ text: input.value })
  });
  input.value = '';
  fetchNotes();
});

fetchNotes();
