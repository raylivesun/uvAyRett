// the following disclaimer in the documentation and/or other materials
%{
    :license "Apache License 2.0"
    :copyright "2023, Your Name"

    :author "Your Name"
    :email "your_email@example.com"
    :homepage "https://github.com/your_organization/your_project"

    :description "A brief description of your project."
    :category "Development"
    :source-url "https://github.com/your_organization/your_project"
    :dependencies [
        [org.clojure/clojure "1.11.1"]
        ;; Add any other dependencies here
    ]
    :plugins [[lein-ancient "1.7.1"]]

    :profiles {:dev {:dependencies [[midje "1.13.0"]]}}
    :main your_namespace.core
    :resource-paths ["resources"]
    :test-paths ["test"]
    :repl-options {:init-ns user}
    :target-path "target"
    :java-source-paths ["src/java"]
    :test-java-source-paths ["test/java"]}
 
    void main() {
        // Leiningen task definitions
        task clean, "Remove target directory" do
          sh "rm -rf target"
        end

        task compile, "Compile Clojure source files" do
          sh "lein clean && lein compile"
        end

        task test, "Run Midje tests" do
        sh "lein midje"
        end
    }


%}