# Wordpress with Vagrant 
## Description 
This project is an example how to set up Wordpress using virtual machines, and Vagrant for automation. Also, it can help beginner web programmers to create testing environments for testing their WordPress projects.
## Components 
1. Vagrantfile:
   * This is an **Vagrant** configuration file. All changes that we do in this file will affect to your creating virtual machine.
2. wordpress:
   * This is the configuration file for the nginx server inside our virtual machine. All changes in this file will affect to our **enginx** server.
3. wp-config.php
   * This is an configuration file for wordpress ,which is used to connetct wordpress do database.
4. script .sh:  
   * This file include all necessary instructions that we need to create our test environment. Vagrant uses this file in virtual machine creating process. 

## Usage:

>### Pre requirepmants 
>You should have pre installed Vagrant and Virtualbox.  
>  
>  
>Helpful links how to install this components  
>   * [Virtualbox](https://www.virtualbox.org/wiki/Downloads)  
>   * [Vagrant](https://www.vagrantup.com/docs/installation)  

1. Get all pre mentioned components into  your working directory.
  > _Please note that all files in your working directory  will be presented under /vagrant directory inside your virtual machine_ 
2. Open terminal and go to your working directory 
3. Execute **vagrant up** command 
4. Brouse the ip address 192.18.4.5 that used for this example.

## Notes
In this example, we have an access to  Wordpress via  ip address 192.168.4.5. If it is not preferred way for you, then you can make changes in Vagrant file, in order to access wordpres on another ip address.
 * if you want to change the ip address, then you need to change the value in line mentioned below :  
    ```sh 
      config.vm.network "private_network", ip: "192.168.4.5"
    ```
 * Also you can acces wordpress by using port forwarding.For tat in Vagrantfile  you need to uncomment the line below, and cooment the the previous line .
   ```sh 
     # vgwordpress.vm.network "forwarded_port", guest: 80, host: 8080  
    ```
    and your wordpress will be accesable on your localhosts 8080 port.
