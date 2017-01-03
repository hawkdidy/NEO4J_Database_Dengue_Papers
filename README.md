# NEO4J_Database_Dengue_Papers
Have you ever wondered what was going in a field related to a certain keyword? Look no further! This repository is a combination of code that helps you build a NEO4J database of all research papers that come out of a SCOPUS query. This is still a littler rough since it was developed in 36 hours for the Dengue Hackathon by the Brussels Data Science community. 

The code is broken down into 3 main parts. Building the NEO4J database, building a similarity matrix based on paper abstracts, and visualizing that information in gephi. 

The NEO4J database was built based on the following data model:

![alt tag](https://github.com/hawkdidy/NEO4J_Database_Dengue_Papers/blob/master/data_model.png)

Although the database was not completed to that exact model due to the time constraint, most of the model was implimented. Unfortunatly authors were not linked to referenced authors. This was pretty complicated due to format of the cited papers colomn. The database allows to view many connections in the field! Just load it up in the NEO4J console and have fun! Feel free to use any of your own data that you have aquired from SCOPUS. It should load just find with the database. For the hackathon we focused on papers related to dengue outbreak predicition.

So using python and scikit learn the similarity between the abstracts was calculated. The ultimate goal would lead to adding these back to the NEO4J database as a new relationship called "Similar too". Unfortunatly we did not have time for that. This would add a great extra dimension to the data.

The quick and dirty method for visualizing the similarity matrix was through Gephi. This allowed us to see which authors wrote the most, were cited the most, as well as document clustering. This created some beautiful visualizations! 

All in all it was a pretty successfull hackathon! We created a very cool database and had a lot of fun! I hope that I can build on the project when I have some time. Special thanks to Eric and Phil for contributing the gephi code and similarity code. Another big thanks to Philippe Van Impe and Annelies Baptist for organizing the hackathon. 