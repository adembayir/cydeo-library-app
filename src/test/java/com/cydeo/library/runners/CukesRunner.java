package com.cydeo.library.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "rerun:target/rerun.txt",
        },
        features = "src/test/resources/features",
        glue = "com/cydeo/library/step_definitions",
        dryRun = false,
        tags = "@wip"

)

public class CukesRunner {
}
