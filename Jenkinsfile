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
     sh 'terraform init'
     sh 'terraform destroy -auto-approve'
    }
    }
  }
}
