# Vanderbilt-Projects
These are the scripts I wrote and the network I built as a student in the Vanderbilt Cybersecurity Bootcamp.

##Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

[Images/ELK_Net_Diagram]

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively , select portions of the Ansible file may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
    - Beats in Use
    - Machines Being Monitored
- How to use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system services.

The configuration details of each machine may be found below.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4  | Linux            |
| Web-1 | Secured VM | 10.0.0.6 |Linux           |
| Web-2  | Secured VM | 10.0.0.7 |Linux          |
| ELK-1    | Secured VM | 10.1.0.7  |Linux          |




### Access Policies

The machines on the internal network are not exposed to the public internet.

Only the Jump-Box-Provisioner machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 24.166.211.167

Machines within the network can only be accessed by Web-1(10.0.0.6).

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes             | 24.166.211.167   |
| Web-1 | No                    | 10.0.0.4  |
| Web-2 | No                    | 10.0.0.4 |


### ELK Configuration 

 Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it allows for the updating and configuring of multiple machines at once.

The playbook implements the following tasks:
- install docker.io: downloads and installs docker.io.
- install python3-pip: downloads the python 3 pip library, so we may use it later on.
- install docker module: sets docker as present on the machine.
- increase virtual memory: increases the amount of memory in our new VM.
- use more memory: tells the new VM to use the newly allocated memory.

The following screenshot displays the result of running ‘docker ps’ after successfully configuring the ELK instance.

[Images/docker_ps_Screenshot.png]

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.6
- 10.0.0.7
- 10.1.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to connect the following information from each machine:
- Filebeat collects log events and sends them to logstash and/or elasticsearch so the we may  see any failed log in attempts and ssh requests.
- Metricbeat collects metric data from services and/or daemons on how much of the system CPU they are using, looking for evidence of unwanted software and potential malware.

## Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned:

SSH into th e control node and follow the steps below:
- Copy the filebeat-config.yml file to /etc/filebeat/filebeat.yml.
- Update the install-elk.yml file to include ports 5601, 9200, and 5044 as published ports.
- Run the playbook, and navigate to http://ELK_IP:5601/app/kibana to check that the installation worked as expected.


