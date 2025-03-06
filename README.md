### DogSay Documentation

---

#### **Description**

**DogSay** is a fun command-line tool that displays a cute ASCII-art dog along with a user-provided message. It’s a playful way to add some personality to your terminal! You can customize the dog's appearance and even add your own custom ASCII art.

---

#### **WARNING**
Build may doesn't works for gentoo, arch and ubuntu with debian

---

#### **Installation**

DogSay can be installed on various Linux distributions. Below are the installation instructions for different systems.

---

##### **1. Gentoo**

1. Add the DogSay ebuild to your local overlay.
2. Install using `emerge`:

   ```bash
   emerge --ask app-misc/dogsay
   ```

---

##### **2. Arch**

1. build and install manually:

   ```bash
   git clone https://aur.archlinux.org/dogsay.git
   cd dogsay
   makepkg -si
   ```

---



#### **Usage**

DogSay is simple to use. Here are the available options:

---

##### **Basic Usage**

Display a dog saying a message:

```bash
dogsay "Hello, World!"
```

Output:

```
                   < Hello, World! >
                      / /
░▄▀▄▀▀▀▀▄▀▄░░░░░░░░░
░█░░░░░░░░▀▄░░░░░░▄░
█░░▀░░▀░░░░░▀▄▄░░█░█
█░▄░█▀░▄░░░░░░░▀▀░░█
█░░▀▀▀▀░░░░░░░░░░░░█
█░░░░░░░░░░░░░░░░░░█
█░░░░░░░░░░░░░░░░░░█
░█░░▄▄░░▄▄▄▄░░▄▄░░█░
░█░▄▀█░▄▀░░█░▄▀█░▄▀░
░░▀░░░▀░░░░░▀░░░▀░░░
```

---

##### **Change Dog Art**

Switch between different dog art styles:

```bash
dogsay --config small "I'm a small dog!"
```

Output:

```
                   < I'm a small dog! >
   / \__
  (    @\___
  /         O
 /   (_____/
/_____/   U
```

Available art types:
- `default` (default dog)
- `small` (small dog)

---

##### **Custom Dog Art**

You can use your own ASCII art for the dog:

1. Create a file with your custom art, e.g., `my_dog.txt`:

   ```
       _____
     /       \\
    |  O   O  |
    |    ∆    |
     \\  -----  /
       \\_____/
   ```

2. Set the custom art:

   ```bash
   dogsay --custom my_dog.txt "I'm a custom dog!"
   ```

Output:

```
                   < I'm a custom dog! >
       _____
     /       \\
    |  O   O  |
    |    ∆    |
     \\  -----  /
       \\_____/
```

---

##### **Reset to Default**

To reset the dog art to the default:

```bash
dogsay --config default "Back to default!"
```

---

#### **Authors**

DogSay was created by **Your Name** with contributions from the open-source community. Special thanks to all the ASCII artists who inspired the dog designs!

- **GitHub**: [yourusername](https://github.com/yourusername)
- **Email**: your.email@example.com

---

#### **License**

DogSay is licensed under the **GNU General Public License v2 (GPL-2)**. You are free to use, modify, and distribute this software as long as you comply with the terms of the license.

---

Enjoy using DogSay! 🐕✨
