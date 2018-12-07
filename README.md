Suri Garden Rails API

Current Version: v1

The API for an application that let's a user manage their home garden or homestead plots.
Stores info about plant care and plant sets reminders about watering and harvesting patterns.

Deployed Client: https://natesuri.github.io/suri-garden-client/
Deployed API: https://pacific-reaches-70030.herokuapp.com/
Github Client repo: https://github.com/Natesuri/suri-garden-client
Github Api repo: https://github.com/Natesuri/Suri-Garden-App

Api Technology Used: RUBY, RAILS, ACTIVE RECORD, POSTGRES
    The rails API accepts incoming AJAX requests from the client, and interacts with a Postgres DB.
    User auth sign-in and sign-up is handled by the User Controller and doens't require a token.
    All other requests are protected and require an token from them to be accepted.
    A user has many plots. Plots can have many plants and plants can have many plots, so they
    come together at the join table plot_plants.

Planning and Execution:
    ERD: https://www.dropbox.com/sh/rf8jmxwecie0bab/AABnWYXQD7znAz05DPyLXrIGa?dl=0
    Rails v1 ERD 20181207 represents the latest ERD. Ignore example as it is not actually used in the application.
    Original planned a one-to-many realtionship between plots and plants because the original application relied
    entirely on user plant input. The relationship needed to be resived after the concept of "common plants"
    was added to the application. Since plants are going to be predefined, the relationship to plots is many-to-many.

  Unsolved and unfinished content:
    No unfinished content, but still pending updated client.
    The client is not using the API's full data set as it is not equiped to add plants to plots yet.
    Once the client use of plants is implimented, a more complete evaluation of the API's state will be included.
    All testing done with curl-scripts have been successful.
