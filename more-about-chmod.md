In the context of the `chmod` command, different numeric codes are used to set permissions for a file or directory. These codes are composed of three digits, each of which represents permissions for the owner, group, and others, respectively. Here’s a breakdown of the common permission codes:

### Numeric Permission Codes
Each digit can be a sum of the following values:
- **4**: Read (`r`)
- **2**: Write (`w`)
- **1**: Execute (`x`)

The sum of these values determines the permissions for each class of users (owner, group, others). Here are some common combinations:

1. **0**: No permissions (`---`)
2. **1**: Execute only (`--x`)
3. **2**: Write only (`-w-`)
4. **3**: Write and execute (`-wx`)
5. **4**: Read only (`r--`)
6. **5**: Read and execute (`r-x`)
7. **6**: Read and write (`rw-`)
8. **7**: Read, write, and execute (`rwx`)

### Examples of Common Codes

1. **755**: 
   - Owner: Read, write, and execute (`rwx`)
   - Group: Read and execute (`r-x`)
   - Others: Read and execute (`r-x`)
   ```bash
   chmod 755 file.txt
   ```

2. **644**: 
   - Owner: Read and write (`rw-`)
   - Group: Read only (`r--`)
   - Others: Read only (`r--`)
   ```bash
   chmod 644 file.txt
   ```

3. **700**: 
   - Owner: Read, write, and execute (`rwx`)
   - Group: No permissions (`---`)
   - Others: No permissions (`---`)
   ```bash
   chmod 700 file.txt
   ```

4. **600**: 
   - Owner: Read and write (`rw-`)
   - Group: No permissions (`---`)
   - Others: No permissions (`---`)
   ```bash
   chmod 600 file.txt
   ```

5. **666**: 
   - Owner: Read and write (`rw-`)
   - Group: Read and write (`rw-`)
   - Others: Read and write (`rw-`)
   ```bash
   chmod 666 file.txt
   ```

6. **777**: 
   - Owner: Read, write, and execute (`rwx`)
   - Group: Read, write, and execute (`rwx`)
   - Others: Read, write, and execute (`rwx`)
   ```bash
   chmod 777 file.txt
   ```

### Examples with Directory Permissions

1. **755 for a directory**: 
   - Owner: Read, write, and execute (`rwx`)
   - Group: Read and execute (`r-x`)
   - Others: Read and execute (`r-x`)
   ```bash
   chmod 755 /path/to/directory
   ```

2. **700 for a directory**: 
   - Owner: Read, write, and execute (`rwx`)
   - Group: No permissions (`---`)
   - Others: No permissions (`---`)
   ```bash
   chmod 700 /path/to/directory
   ```

### Combining Codes for Special Permissions

- **Setuid (4) and Setgid (2)**: These special permissions can be added for executable files and directories.
  - **Setuid (4xxx)**: Execute as the file’s owner.
    ```bash
    chmod 4755 script.sh
    ```
  - **Setgid (2xxx)**: Execute as the file’s group.
    ```bash
    chmod 2755 directory
    ```

Understanding these codes allows you to effectively manage file and directory permissions in Linux, enhancing security and collaboration.
