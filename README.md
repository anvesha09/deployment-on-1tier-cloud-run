# 2048
A small clone of [1024](https://play.google.com/store/apps/details?id=com.veewo.a1024), based on [Saming's 2048](http://saming.fr/p/2048/) (also a clone). 2048 was indirectly inspired by [Threes](https://asherv.com/threes/).

The official app can also be found on the [Play Store](https://play.google.com/store/apps/details?id=com.gabrielecirulli.app2048) and [App Store!](https://itunes.apple.com/us/app/2048-by-gabriele-cirulli/id868076805)

### Screenshot

<p align="center">
  <img src="https://cloud.githubusercontent.com/assets/1175750/8614312/280e5dc2-26f1-11e5-9f1f-5891c3ca8b26.png" alt="Screenshot"/>
</p>

That screenshot is fake, by the way. I never reached 2048 :smile:

### License
2048 is licensed under the [MIT license.](https://github.com/gabrielecirulli/2048/blob/master/LICENSE.txt)

----------------

### Cloud Deployment (Added by Anvesha Tripathi)

This project has been containerized using Docker and deployed on **Google Cloud Run** as a 1-Tier architecture deployment.

### Technologies Used
- Docker
- Google Cloud Platform (Cloud Run, Container Registry)
- GitHub

### Architecture
A simple 1-tier architecture:  
- Frontend + Backend containerized together  
- Hosted on Cloud Run (Serverless)

### Steps Performed
1. Cloned the 2048 Game Repository
2. Created Dockerfile to containerize the app
3. Pushed image to **Google Container Registry**
4. Deployed image on **Cloud Run (managed platform)**
5. Enabled unauthenticated access to make it public

### Live URL
You can access the deployed app here:  
https://my-2048-game-673426855384.us-central1.run.app

---

### Contribution
This deployment and Cloud integration was done by **Anvesha Tripathi** as part of a Cloud Computing project.


