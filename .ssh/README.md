# Add SSH to Github
```
cd ~/.ssh
> ssh-keygen -t ed25519 -C "mingyen066@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/Users/mingyen.chung/.ssh/id_ed25519): personal
...

pbcopy < personal.pub
```
Settings -> SSH and GPG keys -> New SSH KEY



# Select specific private key
The file `config` is used for telling git to use which private key when connect to differnt domain

