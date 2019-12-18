pipeline {
    agent any
    stages {
      stage ('Check Terraform Version') {
        steps {
          script {
          def tfhome = tool name: 'terraform-18', type: 'org.jenkinsci.plugins.terraform.TerraformInstallation'
          env.PATH = "${tfhome}:${env.PATH}"
        }
        sh 'terraform --version'
       }
      stage('terraform init and apply') {
        steps {
          sh '''
          terraform init
          terraform apply -input=false --auto-approve
          '''
        }
      }
    }
}
