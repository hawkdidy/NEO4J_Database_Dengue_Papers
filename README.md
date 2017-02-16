# NEO4J_Database_Dengue_Papers
Team Dengue Conspiracy’s goal during the hackathon was to use NEO4J software to create a network of the key authors and institutions involved in the fight against dengue. Knowledge of the key players involved in understanding and developing treatments for dengue could be valuable information. 

The idea for this project came from a desire to be able to see the relationships in any given field based on certain keywords. Our repository on github, which you can view here, is a combination of code that helps you build a NEO4J database of all research papers that come out of a query in SCOPUS, the largest abstract and citation database of peer reviewed academic literature. The database we created of scientific papers on the prediction of dengue outbreaks allowed us to visualize the key players in the fight against dengue. Of course, this code would benefit from further development, but that’s to be expected from work completed during a 36-hour hackathon. However, this code allows the entire process to be repeated with any data taken from the SCOPUS database. 

The code can be broken down into 3 main parts. Building the NEO4J database, building a similarity matrix based on paper abstracts, and visualizing that information in gephi, an open visualization platform.

The NEO4J database was built based on the following data model:

![alt tag](https://github.com/hawkdidy/NEO4J_Database_Dengue_Papers/blob/master/data_model.png)

Although the database was not completed to that exact model due to the time constraints, most of the model was implemented. More specifically, authors were not linked to referenced authors due to the format of the cited papers column and the time constraints. However, loading the database in the NEO4J console still allows users to view many connections in the field and allows for the building of a similarity matrix based on the abstracts of the research papers. 

Using Python and scikit, an open source Python library, team Dengue Conspiracy calculated the similarity between the abstracts of different scientific papers. The ultimate goal would be to enrich the database by adding these calculations back to the NEO4J database as a new relationship called "Similar to." This would add a great extra dimension to the data, and allows room for further development improving on the work done in this project. 

The quick and dirty method we used for such a time constrained hackathon to visualize the similarity matrix was by using Gephi, an open source visualization platform. This allowed the visualization of document clustering, which authors wrote the most, and which authors were cited the most. This created some beautiful visualizations!

All in all, we at team Dengue Conspiracy consider this to have been a pretty successful hackathon! We created a very cool database and had a lot of fun while doing it. Special thanks to team members Eric Lecoutre and Philippe Kerremans for contributing to the gephi code and similarity code, and finally, another big thanks to Philippe Van Impe and Annelies Baptist for organizing the hackathon.
You can view the presentation from Team Dengue Conspiracy at the DengueHack.org hackathon on the diHub’s youtube channel here. 

https://www.youtube.com/watch?v=c6Bz2E_X1fY

