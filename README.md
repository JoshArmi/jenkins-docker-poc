# jenkins-docker-poc

To get a Jenkins container running locally...

Build the image
    ```
    docker build -t docker-jenkins .
    ```

Run the image, with the correct ports published
    ```
    docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock docker-jenkins
    ```

## Known Issues
It seems there's a problem running a Test stage, it potentially isn't creating the directory to drop the jennkins-log.txt
Possible fix is moving to JenkinsCI-BlueOcean as the base docker image
Have shifted to weekly release from LTS to see if issue is resolved
