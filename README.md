# jenkins-docker-poc

To get a Jenkins container running locally...

Pull the image from dockerhub
    ```bash
    docker pull jenkins/jenkins:lts
    ```

Run the image, with the correct ports published
    ```bash
    docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
    ```
