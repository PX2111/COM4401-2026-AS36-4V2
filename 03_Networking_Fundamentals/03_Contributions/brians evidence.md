i created the network in filius and assigned all the IP adresses to the computers and servers then connected them using wired connection
<img width="953" height="1023" alt="image" src="https://github.com/user-attachments/assets/08bc6e3d-c938-416b-843b-1b0dfd4e20b3" />

i then pinged the library server and public computer to make sure they are connected and can communicate with eachother
<img width="635" height="487" alt="image" src="https://github.com/user-attachments/assets/dc48a7bd-0e8d-4cd5-aee8-fbd736d1f00a" />

after that i hosted the web server onto the library server and connected to it using the staff computer
<img width="1300" height="991" alt="image" src="https://github.com/user-attachments/assets/0aa32213-004a-4f3a-a3fe-a68261ff91df" />

in this example the library server is the web server (website) that runs the the actual HTML code and hosts it to the world, this allows other computers to connect to the server and run the information that is stored on the server (index.html), the staff computer can then make a connection to the server using the http://192.168.20.10​ command on the web browser to actually make that connection to the server and see what the library is hosting


assesment

as the client brief asked i created the structure of the network to ensure all the compononents for the office LAN are included
<img width="944" height="1014" alt="image" src="https://github.com/user-attachments/assets/285a23f0-1159-438d-ad29-33b471371368" />


after creating the structure i connected all the devices and assigned each devices IP address, subnet mask, gateway and DNS
<img width="958" height="1027" alt="image" src="https://github.com/user-attachments/assets/b7fcd454-28c5-4d77-acbf-0779c5f7bbd5" />

i then installed command line on all the office computers and hosted both the web servers of the office server and external server
<img width="1919" height="1070" alt="image" src="https://github.com/user-attachments/assets/bcfc6a73-25c8-42b9-87de-367138472de4" />

i then did the LAN PC to PC test to see if the computers are connected and can communicate with eachother in the network
<img width="1919" height="1076" alt="image" src="https://github.com/user-attachments/assets/7b4d8348-d6d0-4bc6-8761-2d27ac524b5f" />

as you can see the tests were successful and the computers were connected
<img width="1644" height="919" alt="image" src="https://github.com/user-attachments/assets/d218ca3f-411e-41a5-be0c-b82626d372c8" />


i then did the same ping test with the computers and the office server and DNS server which were both also successful
<img width="1635" height="911" alt="image" src="https://github.com/user-attachments/assets/16184b08-f086-4eb8-bdf2-2777a453e18f" />

after that i tested to see if i can connect to the internal web server by IP as
<img width="1332" height="746" alt="image" src="https://github.com/user-attachments/assets/36de9082-7a68-420c-95bb-1039843a18f4" />

as you can see that was successful in the screenshot
i then tested if i can connect to the internal server by the DNS of the server
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/6d4ad050-bd90-4320-9dd8-d4f17751a4c9" />

as you can see in the image this also worked

i then did ping tests to the external server and as you can see in the screenshot they were all successful
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/54ff6896-cc53-44de-85c8-d052d2822053" />

i then did external web connection tests via IP and the domain name and both tests were successful
<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/613b6d41-88e5-4336-8c9d-58e5fd7a379b" />

<img width="1919" height="1079" alt="image" src="https://github.com/user-attachments/assets/8b20a43c-d6a3-4438-b0ae-6f91d4783ff9" />

explaining protocols and concepts

TCP/IP: TCP/IP stands for transmission control protocol/interal protocol, to explain it simply, it is the foundation set of rules/stages of communication computers need to take whenever data is being manipulated online, it is how data is broken down, addressed, transmitted, routed and then received accross the internet
<img width="1065" height="837" alt="image" src="https://github.com/user-attachments/assets/3863906f-6d29-4000-bdd6-1d305b0bac59" />


IP addressing: IP stands for internet protocol, and to put it simply, every device that can connect and use the internet, needs to have a set IP address, that identifies the device so that it can be seen and communicated with devices that also use the internet
<img width="898" height="464" alt="image" src="https://github.com/user-attachments/assets/af7b671b-cffe-4d3d-a0ea-a4a7e406d169" />

DNS: DNS stands for domain name server, it is the "name" that is connected to a devices IP address and allows other devices to connect with the IP address without actually knowing what the IP address is, in the example of the office network, rather than needing to type out the IP address of the cloud server, which is 203.0.113.10, a client (device trying to communicate with server) can use the domain name server to connect with the server instead, in the example of the office network the domain name server is cloud.archstudio.example

gateway: a gateway,
