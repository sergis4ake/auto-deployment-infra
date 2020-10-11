#/bin/bash!

for hostname in node1 node2 node3 node4 node5;
do 
    sshpass -p "1234" ssh-copy-id -o "StrictHostKeyChecking no" -i ./key-ssh/key.pub ansible@$hostname;
    #ssh -p 22 -i $HOME/.vagrant.d/insecure_private_key ansible@$hostname;
done

