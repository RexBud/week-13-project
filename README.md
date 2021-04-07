## Unit 13 Project

The files in this repository were used to configure the network depicted below.

(Images/ElkNetProject.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the YAML file may be used to install only certain pieces of it, such as Filebeat.

  - ansible/install-elk.yml
  - ansible/filebeat-playbook.yml
  - ansible/metricbeat_playbook.yml


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting access to the network.

- Load Balancers protect the system from potential DDos attacks, ensuring availability of the network, while a jumpbox will ensure that there is only one access node for security and monitoring purposes. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system metrics/performance.
- Filebeat monitors log files
- Metricbeat monitors system performance metrics

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function           | IP Address | Operating System |
|----------|--------------------|------------|------------------|
| RedTeamVM| Gateway (jump box) | 10.0.0.4   | Ubuntu 18.04     |
| Web-1    | DVWA  container    | 10.0.0.6   | Ubuntu 18.04     |
| Web-2    | DVWA  container    | 10.0.0.5   | Ubuntu 18.04     |
| ElkVM    | Elk Stack container| 10.1.0.4   | Ubuntu 18.04     |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the RedTeamVM machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

- 184.146.125.100

Machines within the network can only be accessed by RedTeamVM.

- RedTeamVM Ansibble IP:52.152.173.160

A summary of the access policies in place can be found in the table below.

| Name      | Publicly Accessible | Allowed IP Addresses     |
|-----------|---------------------|--------------------------|
| RedTeamVm | no                  | 184.146.125.100 10.0.0.4 |
| Web-1     | no                  | 184.146.125.100 10.0.0.4 |
| Web-2     | no                  | 184.146.125.100 10.0.0.4 |
| ElkVM     | no                  | 52.152.173.160           |


### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it saves atime and allows deployment on any number of machiens with minimal attention needed. 

The playbook implements the following tasks:

- Install Docker
- Install apt module and pip
- Download ELK Image and launch a docker elk container
- enable ELk on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:

- 10.0.0.4
- 10.0.0.5
- 10.0.0.6

We have installed the following Beats on these machines:

- Filebeat

These Beats allow us to collect the following information from each machine:

- Filebeat allows us to collect and view system log data from each machine in a GUI interface. This includes details such as time stamps, filetype, commands entered and more. it will also list which applications were impacted by the log changes. 


### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the filebeat-config.yml file to ~/etc/ansible/
- Update the filebeat-config.yml file to include the correct username, password, and hosts IP 
- Run the playbook, and navigate to the Filebeat Installation page on your Kibana to check that the installation worked as expected. 
  - the URL should be: 
	http://[your.ELK-VM.External.IP]:5601/app/kibana. 
	-> logs 
	-> system logs


_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._