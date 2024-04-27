Homework Shan Lin

Link of data source: 
https://data.cityofnewyork.us/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9/about_data

About data: 
It comes from NYC Open data provided by Office of Technology and Innovation (OTI)

Data dictionary: 
https://data.cityofnewyork.us/api/views/erm2-nwe9/files/7bdd2c6b-ad79-438e-9ae6-2ce75b471063?download=true&filename=311_ServiceRequest_2010-Present_DataDictionary_Updated_2023.xlsx

Github Account:
https://github.com/pandadatanil

Github Homework Link:
https://github.com/pandadatanil/homework

Azure Account:
SHAN.LIN24@login.cuny.edu

Azure storage:
https://portal.azure.com/?quickstart=true#@CUNY907.onmicrosoft.com/resource/subscriptions/1c37c168-9fab-4183-b89f-49bef5724bde/resourceGroups/rg-baruch-cis-dev/providers/Microsoft.Storage/storageAccounts/sthomeworkcis9440/containersList

CONTAINER_AZURE = 'homework1'
blob_name = "homework1_311_20240420.csv"

Azure Database for PostrgreSQL flexible server:
https://portal.azure.com/?quickstart=true#@CUNY907.onmicrosoft.com/resource/subscriptions/1c37c168-9fab-4183-b89f-49bef5724bde/resourceGroups/rg-baruch-cis-dev/providers/Microsoft.DBforPostgreSQL/flexibleServers/cisdwbaruchhw/overview


Tableau Link: 
https://public.tableau.com/app/profile/shanlinna/viz/311request/Dashboard

Introduction: 
The dashboard is is filtered on Complaint Type, Day, Borough and Agency. The Complaint Type filter keeps 133 of 133 members. The Day filter ranges from 8 to 19 which means Aril 8, 2024 to April 19, 2024. The Borough filter keeps 6 of 6 members. The Agency filter keeps 13 of 13 members.

Details:
1.	Request Number (By Agency):Color shows details about Agency.  Size shows count of fact_request.  The marks are labeled by count of fact_request. 
2. Request Number (By Borough): Color shows details about Borough.  Size shows count of fact_request.  The marks are labeled by count of fact_request.
3. Request Number & Avg Request Process time (By Complaint Type):The trends of count of fact_request and Avg. Date Diff for Complaint Type.  Color shows details about count of fact_request and Avg. Date Diff. 
4. Request Number & Avg Request Process time (By Agent): The trends of count of fact_request and Avg. Date Diff for Agency.  Color shows details about count of fact_request and Avg. Date Diff. 
5. Request Number (By Time By Borough): The trend of count of fact_request for Hour.  Color shows details about Borough. The data is filtered on Day, Complaint Type and Agency. 
6. Request Number (By Day By Complaint Type): The plot of count of fact_request for Day.  Color shows details about Complaint Type.
7. Avg Request Process Time (By Agency): Agency.  Color shows details about Agency.  Size shows average of Date Diff.  The marks are labeled by Agency. 
8. Complaint Map: Map based on longitude and Latitude.  Color shows details about Complaint Type. 
9. Request Number (By Agency By Borough): Agency (color) and count of fact_request (size) broken down by Borough vs. Agency. 

Conclusion:

1. The total number of requests is 72,890, with a total request processing time of 66,585,678 minutes, resulting in an average processing time of 913.5 minutes per request. This dataset involves a total of 13 agencies, 5 channels, and 133 complaint types.
2. The NYPD handles the highest number of requests, accounting for over half of the total.
3. Brooklyn has the highest number of request initiations by borough, followed by Queens and Manhattan.
4. The most common request is for Illegal Parking, followed by Noise-Residential. These two types of requests have relatively fast average processing times of 146 minutes and 80 minutes, respectively.
5. The NYPD, as the agency with the highest number of requests processed, also ranks among the fastest in processing speed, with an average processing time of 119 minutes. On the other hand, OTI exhibits the slowest processing speed.
6. The peak period for requests during the day is around noon, with Queens having the highest number of requests at that time.
7. Based on the distribution of 311 requests on the map, Staten Island has fewer requests, while Manhattan has a denser distribution.
