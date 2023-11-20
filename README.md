# What is this? 
This contains a bash script `internet.sh` with main function to periodically check the internet connectivity and restart the network manager if neccessary (No internet connection after 5 minutes by default). 

# How to use?
1. Clone this repository to remote server / local machine 
2. Make the script `internet.sh` executable using command : `sudo chmod +x internet.sh`
3. Run the script `./internet.sh &`. The `&` at the end runs the script in the background

## Please take Note
Be cautius when automatically restarting network services, as it may interrupt ongoing network activities. Ensure that you understand the implications of restarting the Network Manager in your specific use case. Additionally, you might want to investigate the root cause of intermittent connectivity issues for a more permanent solution. 