#### [Labs](labs.md) => _lab-9-linux.md_

# Lab 9: Quick and dirty intro to Linux

Goals:

1. See how directories and files are organized on Linux.
2. Explore your home directory.
3. Learn a few basic Linux commands.

## Step 1: ssh into your Ansible control node.

```shell
ssh -i privatekeyfile userid@ipaddress
``` 

## See what directory you're in 

```shell
pwd
```

## Step 3: Get directory listing 

```shell 
ls
ls -a
ll
``` 

## Step 4: Create a subdirectory 

```shell
mkdir newdir
```

### Step 5: Change to the new subdirectory

```shell
cd newdir
```

### Step 6: Create a file with 'touch'

```shell
touch newfile.txt
```

### Step 7: Delete a file 

```shell
rm newfile.txt
```

### Step 8: Create a file with 'echo'

```shell
echo 'This is good' > good.txt
```

### Step 9: Append text to an existing file 

```shell
echo 'So is this' >> good.txt
```

### Step 10: Display the contents of a file 

```shell
cat good.txt
```

### Step 11: Copy a file 

```shell
cp good.txt better.txt
echo 'and this is even better' >> better.txt
```

### Step 12: Move or rename a file

```shell
mv good.txt notbad.txt
```

### Step 13: Change to the parent directory 

```shell
cd ..
```

## Step 14: See which version of Linux you're using 

```shell
uname -a
```

## Step 15: See what userid you're signed in as

```shell
whoami
```

## Step 16: Create a script, make it executable, and run it

```shell
echo 'uname -a' > sysinfo.sh
chmod +x sysinfo.sh
./sysinfo.sh
```

## Step 17: See what environment variables are set 

```shell
env
```

## Step 18: See the current search path 

```shell
echo $PATH
``` 

## Step 19: See whether a program is on the path 

```shell
which ansible
``` 

### Step 20: See which version of Ansible is installed 

```shell
ansible --version
```

### Step 21: Pipe commands 

```shell
ansible --version | grep 'jinja'
```

### Step 22: Find matching filenames and sort the list

```shell
find . -name "*.sh" | sort 
```