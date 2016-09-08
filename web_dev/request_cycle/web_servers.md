# What are some of the key design philosophies of the Linux operating system?

One core philosophy of Linux is to assume that the user is computer literate and avoid the approach of more graphical OS's like Windows and MacOS, which constantly prevent the user from taking actions that may harm their machines or are out of the scope of thier knowledge.  Linux provides more freedom, but you also need to be careful as you can easily delete huge amounts of data.  This is embodies in Linux's reliance on the command line and teh freedom afforded users.

# In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

A VPS is usually a walled off section of a larger machine that operates as if it were its own device.  You can access it from another machine and run any OS just as if it were a stand-alone physical computer.  One obvious benefit is that a virtual machine allows you to perform actions, run programs, and allow access to the web, all without risking or exposing your own machine.

# Why is it considered a bad idea to run programs as the root user on a Linux system?

When logged in as root instead of a user account, you are able to alter any file in your system.  THis means that viruses or bugs could destroy or compromise all teh data on your system.  If you're using  user account, your damage is limited to the user's home folder.