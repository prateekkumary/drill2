# Download the contents of "Harry Potter and the Goblet of fire" Book.
wget -O harry.txt "https://raw.githubusercontent.com/bobdeng/owlreader/master/ERead/assets/books/Harry%20Potter%20and%20the%20Goblet%20of%20Fire.txt"
# 'wget' : This command is used to download files from the web.
# '-O harry.txt' : This option specifies the output file name. In this case, the content will be saved as harry.txt.
# '"URL"' : The URL in quotes is the location from where the file is downloaded.

# Print the First Three Lines in the Book.
head -n 3 harry.txt
# 'head' : This command prints the first part of files.
# '-n 3': This option specifies the number of lines to display. Here, the first three lines are printed.
# 'harry.txt' : The name of the file from which to print the lines.

# Print the last 10 lines in the book.
tail -n 10 harry.txt
# 'tail' : This command prints the last part of files.
# '-n 10' : This option specifies the number of lines to display. Here, the last ten lines are printed.

# How many times the words occur in the book(Harry, Ron, Hermione, Dumbledore).
grep -o -i "Harry" harry.txt | wc -l
grep -o -i "Ron" harry.txt | wc -l
grep -o -i "Hermione" harry.txt | wc -l
grep -o -i "Dumbledore" harry.txt | wc -l
# 'grep' : This command searches for patterns in files.
# '-o' : This option prints only the matched parts of matching lines.
# '-i' : This option makes the search case-insensitive.
# '"WORD"' : Replace "WORD" with "Harry," "Ron," "Hermione," or "Dumbledore" to count each occurrence.
# '| wc -l' : This pipeline (|) takes the output of the grep command and passes it to wc -l, which counts the number of lines (in this case, the number of occurrences).

# Print lines from 100 through 200 in the book.
sed -n '100,200p' harry.txt
# 'sed' : This command is a stream editor used to perform basic text transformations.
# '-n' : This option suppresses automatic printing of pattern space, so only the specified lines are printed.
# '100,200p' : This specifies the range of lines to print, from line 100 to line 200.
# 'harry.txt' : The name of the file from which to print the lines.

# How many unique words are present in the book?
tr -cs "[:alpha:]" "\n" < harry.txt | sort | uniq -c | wc -l
# 'tr' : This command translates characters.
# '-cs "[:alpha:]" "\n"' : This option compresses sequences of non-alphabetic characters and replaces them with newlines, effectively splitting the text into words.
# '< harry.txt' : This indicates that the tr command should read from the file.
# 'sort' : This command sorts the words alphabetically.
# 'uniq -c' : This command filters out duplicate words and counts their occurrences.
# 'wc -l' : This counts the number of unique words by counting the number of lines output by uniq -c.


# PROCESSES, PORTS

# List your browser's process ids (pid) and parent process ids(ppid).
ps -ef | grep -i "browser"
# 'ps -ef' : This command lists all running processes (-e), with full details (-f).
# 'grep -i "browser"' : Filters the output to show only processes related to the browser (case-insensitive search).

# Stop the browser application from the command line.
kill <PID>
# 'kill' : Sends a signal to a process, by default it sends the TERM signal to terminate the process.
# '<PID>' : Replace <PID> with the actual PID of the browser process.
# 'kill -9 <PID>' : If the process does not stop, you can use the -9 option to force it to terminate.

# List the Top 3 Processes by CPU Usage.
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 4
# 'ps -eo pid,ppid,cmd,%mem,%cpu' : Lists all processes with specific columns (PID, PPID, command, memory usage, CPU usage).
# '--sort=-%cpu' : Sorts the processes by CPU usage in descending order.
# 'head -n 4' : Shows the top 4 lines (header + top 3 processes).
# we can also use 'htop' if possible.

# List the top 3 processes by memory usage.
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 4
# '--sort=-%mem' : Sorts the processes by memory usage in descending order.
# 'head -n 4' : Shows the top 4 lines (header + top 3 processes).

# Start a Python HTTP server on port 8000.
python3 -m http.server 8000
# 'python3 -m http.server 8000' : Starts a simple HTTP server using Python 3 on port 8000.

# Open another tab. Stop the process you started in the previous step.
screen  # you can open a new window/tab.
# first list the process and then kill it.
ps -ef | grep (process-name)
# 'ps aux | grep (process-name)'  -> we can also use this command.
kill <PID>
# Replace <PID> with the actual process ID obtained from the 'ps' command.

# Start a Python HTTP server on port 90.
sudo python3 -m http.server 90
# 'sudo' : Required because ports below 1024 typically need elevated privileges.
# 'python3 -m http.server 90' : Starts the server on port 90.

# Display all active connections and the corresponding TCP / UDP ports.
sudo ss -tuln   # 'sudo netstat -tuln' -> we can also use this command.
# '-tuln' : Shows TCP (-t), UDP (-u), listening (-l), and numeric (-n) ports.

# Find the pid of the process that is listening on port 5432.
sudo lsof -i :5432
# 'lsof -i :5432' : Lists open files (lsof) related to network connections on port 5432.
# The PID will be displayed in the output.


# MANAGING SOFTWARE

# Install htop, vim and nginx.
sudo apt install htop vim nginx 
# 'sudo' : grants you the necessary administrative privileges.
# 'apt' : install is the command used to install software packages.
# 'htop', 'vim', and 'nginx' : the package names you wish to install.

# Uninstall nginx.
sudo apt remove nginx   # This command removes the nginx package but leaves behind any configuration files and dependencies that may have been installed with it.
# 'sudo apt purge nginx' -> We can also use this command if necessary. This command removes nginx along with its configuration files, ensuring a clean uninstall.


# MISC

# What's your local IP address?
ip add   # 'ip a' -> We can also use this command. These both command shows detailed information about all network interfaces and their associated IP addresses.

# Find the IP address of google.com
nslookup google.com   # nslookup-"Name Server Lookup", This command queries the DNS to obtain the IP address associated with the domain 'google.com'. It provides additional information like the DNS server used for the query.
# 'dig google.com' : dig-"Domain Information Groper", This command provides detailed information about the DNS query. The IP address will be listed in the ANSWER SECTION of the output.
# 'host google.com' : This command performs DNS lookups and displays the IP address of 'google.com' along with other related information.

# How to check if Internet is working using CLI?
ping -c 4 google.com   
# 'ping' : Sends ICMP Echo Request packets to a specified host.
# '-c 4' : Limits the number of packets to 4.
# 'google.com' : A reliable public domain to check connectivity.
# If you receive replies, your Internet is likely working. If you see errors or timeouts, there might be a connectivity issue.
# 'dig google.com' or 'nslookup google.com' -> We can also use these commands. 

# Where is the node command located? What about code?
which node
# 'which' : Locates the executable file associated with a given command.
# 'node' : The command for Node.js.

which code 
# 'which' : Locates the executable file associated with a given command.
# 'code' : The command for Visual Studio Code.

