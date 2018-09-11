package com.example.contracttests;

import com.example.contract.BaseClass;
import com.jayway.jsonpath.DocumentContext;
import com.jayway.jsonpath.JsonPath;
import javax.inject.Inject;
import org.junit.Test;
import org.springframework.cloud.contract.verifier.messaging.internal.ContractVerifierMessage;
import org.springframework.cloud.contract.verifier.messaging.internal.ContractVerifierMessaging;
import org.springframework.cloud.contract.verifier.messaging.internal.ContractVerifierObjectMapper;

import static com.toomuchcoding.jsonassert.JsonAssertion.assertThatJson;
import static org.springframework.cloud.contract.verifier.assertion.SpringCloudContractAssertions.assertThat;
import static org.springframework.cloud.contract.verifier.messaging.util.ContractVerifierMessagingUtil.headers;

public class MessagingTest extends BaseClass {

	@Inject ContractVerifierMessaging contractVerifierMessaging;
	@Inject ContractVerifierObjectMapper contractVerifierObjectMapper;

	@Test
	public void validate_hookCreatedV1() throws Exception {
		// when:
			createHook();

		// then:
			ContractVerifierMessage response = contractVerifierMessaging.receive("messages");
			assertThat(response).isNotNull();
			assertThat(response.getHeader("contentType")).isNotNull();
			assertThat(response.getHeader("contentType").toString()).isEqualTo("application/json");
		// and:
			DocumentContext parsedJson = JsonPath.parse(contractVerifierObjectMapper.writeValueAsString(response.getPayload()));
			assertThatJson(parsedJson).field("['repository']").isEqualTo("spring-cloud-samples");
			assertThatJson(parsedJson).field("['username']").isEqualTo("dsyer");
	}

	@Test
	public void validate_hookCreatedV2() throws Exception {
		// when:
			createHookV2();

		// then:
			ContractVerifierMessage response = contractVerifierMessaging.receive("messages");
			assertThat(response).isNotNull();
			assertThat(response.getHeader("version")).isNotNull();
			assertThat(response.getHeader("version").toString()).isEqualTo("v2");
			assertThat(response.getHeader("contentType")).isNotNull();
			assertThat(response.getHeader("contentType").toString()).isEqualTo("application/json");
		// and:
			DocumentContext parsedJson = JsonPath.parse(contractVerifierObjectMapper.writeValueAsString(response.getPayload()));
			assertThatJson(parsedJson).field("['repository']").isEqualTo("spring-cloud-samples");
			assertThatJson(parsedJson).field("['action']").isEqualTo("updated");
			assertThatJson(parsedJson).field("['username']").isEqualTo("dsyer");
			assertThatJson(parsedJson).field("['type']").isEqualTo("hook");
	}

	@Test
	public void validate_issueCreatedV1() throws Exception {
		// when:
			createIssue();

		// then:
			ContractVerifierMessage response = contractVerifierMessaging.receive("messages");
			assertThat(response).isNotNull();
			assertThat(response.getHeader("contentType")).isNotNull();
			assertThat(response.getHeader("contentType").toString()).isEqualTo("application/json");
		// and:
			DocumentContext parsedJson = JsonPath.parse(contractVerifierObjectMapper.writeValueAsString(response.getPayload()));
			assertThatJson(parsedJson).field("['username']").isEqualTo("smithapitla");
			assertThatJson(parsedJson).field("['repository']").isEqualTo("spring-cloud/spring-cloud-netflix");
	}

	@Test
	public void validate_issueCreatedV2() throws Exception {
		// when:
			createIssueV2();

		// then:
			ContractVerifierMessage response = contractVerifierMessaging.receive("messages");
			assertThat(response).isNotNull();
			assertThat(response.getHeader("version")).isNotNull();
			assertThat(response.getHeader("version").toString()).isEqualTo("v2");
			assertThat(response.getHeader("contentType")).isNotNull();
			assertThat(response.getHeader("contentType").toString()).isEqualTo("application/json");
		// and:
			DocumentContext parsedJson = JsonPath.parse(contractVerifierObjectMapper.writeValueAsString(response.getPayload()));
			assertThatJson(parsedJson).field("['username']").isEqualTo("smithapitla");
			assertThatJson(parsedJson).field("['repository']").isEqualTo("spring-cloud/spring-cloud-netflix");
			assertThatJson(parsedJson).field("['type']").isEqualTo("issue");
			assertThatJson(parsedJson).field("['action']").isEqualTo("created");
	}

}
