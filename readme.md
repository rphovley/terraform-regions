# Terraform Regions
This project is a simple example of how to manage multiple regions and environments using Terraform and AWS S3 for state management.

## Instructions
Includes instructions for the terraform.sh script and how to use it.
[Instructions](terraform.md)

## Troubleshooting
A few common issues and how to fix them.
[Troubleshooting](troubleshooting.md)

## Why Terraform? 
Imagine that you were a restaurant owner. In your kitchen, you'd have a number of different appliances. You'd have a fridge, a freezer, a microwave, a dishwasher, a stove, a sink, etc. Each of these appliances has a different purpose and is used for different tasks.  

Let's pretend for a second, that you wanted to franchise your restaurant. You'll want all the same equipment in each restaurant. You might write down the equipment you need in each restaurant, and then you might write down the steps you need to take to get that equipment to each restaurant.  

In software, we do the same thing. Terraform is a tool that allows you to write down the infrastructure you need, and then allows you to manage it through these definitions and the command line.  

Say you need a db, 3 servers, and a load balancer. You can write down the infrastructure you need, and then Terraform will track it for you. Run a single command and Terraform will create that infrastructure for you.  

These "recipes" are written in this project inside the .tf files. In networking.tf, we define a simple VPC. You could add other .tf files for other resources like a db, servers, load balancer, etc.

You need to create that infrastructure for staging and for production? You can use that same definition for both environments. Run your command and Terraform will create that infrastructure for you in the new environment.

You need that infrastructure in eu-west-2 and in us-east-1? You can use the same definition for both regions. Run your command and Terraform will create that infrastructure for you in the new region.

Need to add a redis db? Add that to your definition and run your command. Terraform will create that new infrastructure for you.

You need to track the changes you make to that infrastructure? Your infrastructure is now written down in code, so you can now version control all of it. 

So, in short, Terraform is a tool that allows you to automate creating and managing infrastructure by centralizing your infrastructure definitions.