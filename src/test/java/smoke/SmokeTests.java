package smoke;

import java.lang.invoke.MethodHandles;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.junit4.SpringRunner;

import static org.assertj.core.api.BDDAssertions.then;

/**
 * @author Marcin Grzejszczak
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = SmokeTests.class,
		webEnvironment = SpringBootTest.WebEnvironment.NONE)
@EnableAutoConfiguration
@PropertySources({
	@PropertySource("classpath:properties/test.properties")
})
public class SmokeTests {

	private static final Log log = LogFactory.getLog(MethodHandles.lookup().lookupClass());

	@Value("${stubrunner.url}") String stubRunnerUrl;
//	@Value("${application.url}") String applicationUrl;
	@Value("${readme.url}") String readmeUrl;

	TestRestTemplate testRestTemplate = new TestRestTemplate();

	@Test
	public void shouldWork() {

		System.out.println("applicationUrl: " + readmeUrl);

		ResponseEntity<String> entity = this.testRestTemplate
				.getForEntity("http://" + this.readmeUrl + "/", String.class);

		then(entity.getStatusCode().is2xxSuccessful()).isTrue();
	}

}
