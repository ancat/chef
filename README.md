# chef

## How To?

```
sudo apt-get install chef-solo                # install chef-solo
sudo yum install chef-solo                    # or install chef-solo

git clone https://github.com/ancat/chef.git   # clone this repo
cd chef
vim node.json                                 # edit the run list for the things you want
sudo chef-solo -c ~/chef/solo.rb              # apply chef to your vm
```

## Why?

Because vagrant is 2 hard 4 me. Some projects/libraries/etc are easier to install via chef instead of having one vm per project.

## What's Here?

- [Capstone](http://www.capstone-engine.org/)
- [Angr](http://angr.io/)
- [Radare2](https://github.com/radare/radare2)
- [peda](https://github.com/longld/peda)
- Build Essentials (and related like valgrind and python-pip)
