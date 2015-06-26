Instructions for integrating PZSpeed iOS Cordova Plugin Version 3.1.3

Add the plugin to your Cordova project by executing the following command.. after replacing the Path/to/PZSpeedCordova appropriately.  

cordova plugin add Path/to/PZSpeedCordova

To initialize PZ, add the below code and replace the place holders YOUR_APP_ID and YOUR_API_KEY with your PacketZoom app id and api key. 

PZSpeed.initializePZSpeed('YOUR_APP_ID','YOUR_API_KEY');


Optional: To enable and disable PZ, add the following line of code and pass either true or false. 

PZSpeed.usePZ(true/false);

