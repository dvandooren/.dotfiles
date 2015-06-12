# .dotfiles
This is my collection of dotfiles and shell config subfiles.


## Shell subfiles
This is based on the blog post: http://blog.sanctum.geek.nz/shell-config-subfiles/

Create symlinks as follows:

```shell
    ln -s ~/.dotfiles/bashrc.d ~/.bashrc.d
    ln -s ~/.dotfiles/profile.d ~/.profile.d
```

Then ensure you load them from within ```.bash_profile``` and ```.bashrc.``` You can see examples of how this should be done in the ```osx.bash_profile``` and ```osx.bashrc``` files.
