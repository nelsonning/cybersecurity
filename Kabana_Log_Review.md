## Exploring Kabana

1. Add the sample web log data to Kibana.

2. Answer the following questions:

    - In the last 7 days, how many unique visitors were located in India?
      <br /> There were 226 unique visitors that were located in India.<br />
    - In the last 24 hours, of the visitors from China, how many were using Mac OSX?
      <br />There were 7 unique visitors that was from China and using Mac OSX.<br />
    - In the last 2 days, what percentage of visitors received 404 errors? How about 503 errors?
      <br />404 - 10.294% 503 - 4.412%<br />
    - In the last 7 days, what country produced the majority of the traffic on the website?
      <br /> China produce the majority of the traffic. <br />
    - Of the traffic that's coming from that country, what time of day had the highest amount of activity?
      <br />1pm had the highest amount of activities.<br />
    - List all the types of downloaded files that have been identified for the last 7 days, along with a short description of each file type (use Google if you aren't sure about a particular file type).
      <br />zip - ZIP is an archive file format that supports lossless data compression.
      <br />rpm - An RPM file is an installation package originally developed for the Red Hat Linux operating system.
      <br />gz - A GZ file is an archive file compressed by the standard GNU zip (gzip) compression algorithm.
      <br />deb - A DEB file is a standard Unix archive that contains two bzipped or gzipped archives, one for the installer control information and another for the actual installable data.
      <br />css - Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language such as HTML.<br />
3. Now that you have a feel for the data, Let's dive a bit deeper. Look at the chart that shows Unique Visitors Vs. Average Bytes.
     - Locate the time frame in the last 7 days with the most amount of bytes (activity).
     - In your own words, is there anything that seems potentially strange about this activity?
       <br />Noticed it has a low unique user count with high volume of data transfer.  Users are downloading large volume of data<br />
4. Filter the data by this event.
     - What is the timestamp for this event?
        <br />Dec 12, 2021 21:00 <br />
     - What kind of file was downloaded?
     <br />apm, rpm and zip files<br />
     - From what country did this activity originate?
     <br />China, India and US<br />
     - What HTTP response codes were encountered by this visitor?
     <br />200 is the response code<br />

5. Switch to the Kibana Discover page to see more details about this activity.
     - What is the source IP address of this activity?
     <br />223.112.248.233 
      <br />73.105.236.24 
      <br />35.143.166.159 <br />
     - What are the geo coordinates of this activity?
      <br />223.112.248.233 - { "lat": 37.85008167, "lon": -83.84575194 }
      <br />73.105.236.24 - { "lat": 42.99821222, "lon": -74.32955111 }
      <br />35.143.166.159 - { "lat": 43.34121, "lon": -73.6103075 } <br />
     - What OS was the source machine running?
      <br />223.112.248.233 - osx 
      <br />73.105.236.24 - win xp 
      <br />35.143.166.159 - win 8 <br />
     - What is the full URL that was accessed?
       <br />223.112.248.233 - https://www.elastic.co/downloads/apm 
       <br />73.105.236.24 - https://artifacts.elastic.co/downloads/kibana/kibana-6.3.2-windows-x86_64.zip
       <br />35.143.166.159 - https://artifacts.elastic.co/downloads/beats/metricbeat/metricbeat-6.3.2-i686.rpm <br />
     - From what website did the visitor's traffic originate?
       <br />223.112.248.233 - http://nytimes.com/warning/georgi-beregovoi 
       <br />73.105.236.24 - http://twitter.com/success/maksim-surayev 
       <br />35.143.166.159 - http://facebook.com/success/jay-c-buckey<br />
6. Finish your investigation with a short overview of your insights. 

     - What do you think the user was doing?
     <br />User are downloading Kabana and metricbeat packages<br />
     - Was the file they downloaded malicious? If not, what is the file used for?
     <br />The files don't seem malicious because the source website looks legitimate.  These files are used to install and setup an ELK server<br />
     - Is there anything that seems suspicious about this activity?
     <br />The only thing suspicious about this activity are all visitors are coming from social media platforms to download files.  This is could lead to a DDoS attack by bombarding the site with continuous downloading of installation files.<br />
     - Is any of the traffic you inspected potentially outside of compliance guidlines?
     <br />These links shouldn't be used on the social media platform.<br />
---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  
