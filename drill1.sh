mkdir hello   # Create the 'hello' directory

mkdir -p hello/five/six/seven   # Create directories under 'hello'
mkdir -p hello/one/two/three/four   # Create the full path from 'one' to 'four'

# 'touch' command is used to create empty files
touch hello/five/six/c.txt   # Creates the c.txt file in the 'six' directory
touch hello/five/six/seven/error.log   # Creates the error.log file in the 'seven' directory
touch hello/one/a.txt   # Creates the a.txt file in the 'one' directory
touch hello/one/b.txt   # Creates the b.txt file in the 'one' directory
touch hello/one/two/d.txt   # Creates the d.txt file in the 'two' directory
touch hello/one/two/three/e.txt   # Creates the e.txt file in the 'three' directory
touch hello/one/two/three/four/access.log   # Creates the access.log file in the 'four' directory

tree   # 'tree' command displays the directory and file structure starting from the current directory.

# Delete all the files having the '.log' extension
find hello -type f -name "*.log" -delete
# 'find' -> Searches in the current('hello') directory and all subdirectories.
# '-type f' -> Ensures that only files are matched (not directories).
# '-name "*.log"' -> Matches files with a .log extension.
# '-delete' -> Deletes the matched files.

# Add the following content to 'a.txt' -> "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others"
echo "Unix is a family of multitasking, multiuser computer operating systems that derive from the original AT&T Unix, development starting in the 1970s at the Bell Labs research center by Ken Thompson, Dennis Ritchie, and others" > hello/one/a.txt
# 'echo' -> Outputs the string enclosed in quotes.
# '>' -> Redirects the output to a file, overwriting any existing content.
# 'hello/one/a.txt' -> Specifies the path to the a.txt file.

# Delete the directory named 'five'
rm -r hello/five   # This command recursively deletes the 'five' directory and all its subdirectories and files.
# 'rm -r' -> Removes files and directories recursively.
# 'hello/five' -> Specifies the directory to be deleted.

# Rename the 'one' directory to 'uno'
mv hello/one hello/uno
# 'mv' -> Moves or renames files and directories.
# 'hello/one' -> Specifies the current name and path of the directory.
# 'hello/uno' -> Specifies the new name for the directory.

# Move 'a.txt' to the 'two' directory
mv hello/uno/a.txt hello/uno/two/
# 'mv' -> Moves or renames files and directories.
# 'hello/uno/a.txt' -> Specifies the current path of the a.txt file.
# 'hello/uno/two/' -> Specifies the destination directory where the file should be moved.

tree   # 'tree' command displays the directory and file structure starting from the current directory.


#PrateekKumarYadav
