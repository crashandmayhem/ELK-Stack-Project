## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Images/Elk_stack_Diagram.png](https://github.com/crashandmayhem/ELK-Stack-Project/blob/main/Diagrams/Elk_Stack_Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the yml and config file may be used to install only certain pieces of it, such as Filebeat.

  - _TODO: Enter the playbook file._

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly responsive and available, in addition to restricting traffic to the network.

- What aspect of security do load balancers protect? 
  - Load balancers protect the company or organization from DDoS attacks because it analyzes the traffic coming in and determines what server to send the traffic to. This also prevents servers from being overloaded and with the aid of health probes, it periodically checks that a machine is working properly before sending any traffic
 
- What is the advantage of a jump box?
  - A jump box protects the virtual network by limiting who enters the domain by not allowing access to the other virtual machines unless the user knows the private IP addresses. We are also able to further restrict access by setting rules to allow certain traffic and IP addresses

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system traffic.

- What does Filebeat watch for?
  - Filebeat monitors the log data and/or locations that we specify in our playbook. We are then able to use a service like Kibana to read the data and access the detailed information

- What does Metricbeat record?
  - It monitors the servers and collects metrics from the system and services that are running on the server

The configuration details of each machine may be found below.


|    Name   |                       Function                       |      IP Addresses      |              OS             |   |
|:---------:|:----------------------------------------------------:|:----------------------:|:---------------------------:|---|
| Jump Box  | Gateway & Docker with Ansible                        | 10.0.0.4/40.81.194.56  | Linux Ubuntu 18.04 LTS Gen2 |   |
| Web 1     | Web Server used to run DVWA                          | 10.0.0.5/20.222.86.67  | Linux Ubuntu 18.04 LTS Gen2 |   |
| Web 2     | Web Server used to run DVWA                          | 10.0.0.6/20.222.86.67  | Linux Ubuntu 18.04 LTS Gen2 |   |
| RedELK-VM | Elk Container with Filebeat and Metricbeat to Kibana | 10.1.0.4/20.70.162.220 | Linux Ubuntu 18.04 LTS Gen2 |   |
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump-Box-Provisioners machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- My public IP Address via SSH port 22

Machines within the network can only be accessed by Jump-Box-Provisioner VM and SSH Keys.

- Which machine did you allow to access your ELK VM?
  - Jump-Box-Provisioner SSH 10.1.0.4 via port 22

- What was its IP address?_
  - My public IP address via TCP port 5601


A summary of the access policies in place can be found in the table below.

|    Name   | Publicly Accessible |  Allowed IP Addresses  |
|:---------:|:-------------------:|:----------------------:|
| Jump Box  |         Yes         |      40.81.194.56      |
| Web 1     |          No         |        10.0.0.5        |
| Web 2     |          No         |        10.0.0.6        |
| RedELK-VM |         Yes         | 10.1.0.4/20.70.162.220 |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible?
  - Time, easy deployable, very easy to set up and use

The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
  - Install Docker.io
  - Install Python-pip
  - Install Docker Python Module
  - Increase the Virtual Memory on Elk VM
  - Download and Launch a Docker Elk Container with published ports
  - Enable Service to Docker on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- Which file is the playbook?
  - Filebeat-playbook.yml

- Where do you copy it?
  - /etc/filebeat/filebeat.yml

- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
