podTemplate(
    label: 'jenkins-cicd', 
    inheritFrom: 'default',
    containers: [
        containerTemplate(name: 'docker', image: 'docker', ttyEnabled: true, command: 'cat')
    ]
    volumes: [
        hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock'),
        secretVolume(mountPath: '/etc/remote-server/', secretName: 'ssh-key'),
    ]
) {
    node('jenkins-cicd') {

        def commitId

        stage ('Extract') {
            checkout scm
            commitId = sh(script: 'git rev-parse --short HEAD', returnStdout: true).trim()
            sh "echo ${commitId}"
        }
    }
}
