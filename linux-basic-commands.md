Here is a list of 50 most used Linux commands along with examples:

1. **ls**: Lists directory contents.
   ```bash
   ls -l
   ```

2. **cd**: Changes the current directory.
   ```bash
   cd /home/user
   ```

3. **pwd**: Prints the current working directory.
   ```bash
   pwd
   ```

4. **mkdir**: Creates a new directory.
   ```bash
   mkdir new_folder
   ```

5. **rmdir**: Removes an empty directory.
   ```bash
   rmdir old_folder
   ```

6. **rm**: Removes files or directories.
   ```bash
   rm file.txt
   ```

7. **cp**: Copies files or directories.
   ```bash
   cp source.txt destination.txt
   ```

8. **mv**: Moves or renames files or directories.
   ```bash
   mv old_name.txt new_name.txt
   ```

9. **touch**: Creates an empty file or updates the timestamp of an existing file.
   ```bash
   touch newfile.txt
   ```

10. **cat**: Concatenates and displays file content.
    ```bash
    cat file.txt
    ```

11. **more**: Views file content one screen at a time.
    ```bash
    more file.txt
    ```

12. **less**: Views file content with backward and forward navigation.
    ```bash
    less file.txt
    ```

13. **head**: Displays the first few lines of a file.
    ```bash
    head -n 10 file.txt
    ```

14. **tail**: Displays the last few lines of a file.
    ```bash
    tail -n 10 file.txt
    ```

15. **echo**: Outputs the specified text to the terminal or a file.
    ```bash
    echo "Hello, World!"
    ```

16. **find**: Searches for files and directories in a directory hierarchy.
    ```bash
    find /home -name "file.txt"
    ```

17. **grep**: Searches for patterns in files.
    ```bash
    grep "pattern" file.txt
    ```

18. **chmod**: Changes file permissions.
    ```bash
    chmod 755 script.sh
    ```

19. **chown**: Changes file owner and group.
    ```bash
    chown user:group file.txt
    ```

20. **df**: Reports file system disk space usage.
    ```bash
    df -h
    ```

21. **du**: Estimates file space usage.
    ```bash
    du -sh folder
    ```

22. **top**: Displays tasks and system resource usage.
    ```bash
    top
    ```

23. **ps**: Reports a snapshot of current processes.
    ```bash
    ps aux
    ```

24. **kill**: Terminates a process.
    ```bash
    kill 1234
    ```

25. **pkill**: Kills processes by name.
    ```bash
    pkill firefox
    ```

26. **wget**: Downloads files from the web.
    ```bash
    wget http://example.com/file.zip
    ```

27. **curl**: Transfers data from or to a server.
    ```bash
    curl -O http://example.com/file.zip
    ```

28. **tar**: Archives files.
    ```bash
    tar -cvf archive.tar.gz folder
    ```

29. **gzip**: Compresses files.
    ```bash
    gzip file.txt
    ```

30. **gunzip**: Decompresses files.
    ```bash
    gunzip file.txt.gz
    ```

31. **zip**: Packages and compresses files.
    ```bash
    zip archive.zip file1.txt file2.txt
    ```

32. **unzip**: Extracts compressed files.
    ```bash
    unzip archive.zip
    ```

33. **ssh**: Connects to a remote server via SSH.
    ```bash
    ssh user@remotehost
    ```

34. **scp**: Securely copies files between hosts.
    ```bash
    scp file.txt user@remotehost:/path/to/destination
    ```

35. **rsync**: Syncs files and directories between two locations.
    ```bash
    rsync -avz source/ destination/
    ```

36. **nano**: A simple text editor.
    ```bash
    nano file.txt
    ```

37. **vim**: A more advanced text editor.
    ```bash
    vim file.txt
    ```

38. **man**: Displays the manual page for a command.
    ```bash
    man ls
    ```

39. **alias**: Creates an alias for a command.
    ```bash
    alias ll='ls -l'
    ```

40. **unalias**: Removes an alias.
    ```bash
    unalias ll
    ```

41. **env**: Displays or sets environment variables.
    ```bash
    env
    ```

42. **export**: Sets environment variables.
    ```bash
    export PATH=$PATH:/new/path
    ```

43. **sudo**: Executes a command as another user, typically the superuser.
    ```bash
    sudo apt-get update
    ```

44. **apt-get**: Manages packages on Debian-based systems.
    ```bash
    sudo apt-get install package
    ```

45. **yum**: Manages packages on Red Hat-based systems.
    ```bash
    sudo yum install package
    ```

46. **systemctl**: Controls the systemd system and service manager.
    ```bash
    sudo systemctl restart apache2
    ```

47. **journalctl**: Views logs collected by systemd.
    ```bash
    sudo journalctl -xe
    ```

48. **hostname**: Displays or sets the system's hostname.
    ```bash
    hostname
    ```

49. **uname**: Prints system information.
    ```bash
    uname -a
    ```

50. **date**: Displays or sets the system date and time.
    ```bash
    date
    ```

This list includes some of the most commonly used Linux commands along with basic examples to illustrate their usage.
