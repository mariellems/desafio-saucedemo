pipeline {
  agent { docker { image 'circleci/ruby:2.6.5-stretch-browsers' } }
  stages {
    stage('display info') {
      steps {
        sh 'ruby -v'
        sh 'chromedriver -v'
        sh 'firefox -v'
      }
    }
    stage('requirements') {
      steps {
        sh 'gem install bundler'
        sh 'bundler install'
      }
    }
    stage('test') {
     steps {
        sh 'rm -f log/*'
        sh 'bundler exec cucumber -p ci'
      }
    }
  }

  post{
      success{
        cucumber buildStatus: "SUCCESS",
          fileIncludePattern: "**/report.json",
          jsonReportDirectory: 'log'
      }
      failure{
        cucumber buildStatus: "FAIL",
          fileIncludePattern: "**/report.json",
          jsonReportDirectory: 'log'
      }
  }
}