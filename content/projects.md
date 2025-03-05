## Highschool

### ASCII Duplet compression algorithm

TBD mathematica algo recover from hard drive backup

<!-- [==> See this link for a PDF presentation <==](/static/ASCII%20Duplet%20Compression%20Algorithm.pdf) -->

## 2018

### Logisim ARC Tutoring

[==> See this link for source code! <==](https://github.com/meltingscales/cs-350/tree/master/Logisim)

#### Summary

I tutored many students in digital circuit design using a simulation software called "Logisim".

I worked at the Academic Resource Center (ARC) at IIT. I helped students with their homework and projects, and I also created a few circuits of my own. I also taught C code and assembly in a CPU OPCODE language called "LC3".

![A picture of LogiSim and some circuits - NAND and full adders.](/static/logisim.png)

### Homeless Shelter Donation Coordinator

[==> See this link for source code! <==](https://github.com/meltingscales/homeless-shelter-donation-pickup-coordinator)

[==> See this link for drawings! <==](https://github.com/meltingscales/homeless-shelter-donation-pickup-coordinator/tree/master/_sketches)

#### Summary

This was a project that I worked on that was inspired by my mother, Anne-Marie Keswick. She worked at various different women's shelters and homeless shelters in the Chicago area.

The project was a web application that would allow people to donate items to homeless shelters. The shelters would have a list of items that they needed, and people could sign up to donate those items. The shelters would then be able to coordinate with the donors to pick up the items. 

It was planned to orchestrate logistics and optimize the distribution of desired goods, weighted by category and urgency.

Its design was supposed to be similar to Kubernetes, except decentralized with a focus on local communities. Copying nature is always a good idea, and the way that ants and bees work together is a great example of how to distribute resources efficiently.

I only got rough sketches done, but I think that the idea is still a good one. I hope that someone else can pick up where I left off and make it a reality.

## 2019

### OSINT Dashboard: Mary "Bowser"

[==> See this link for source code! <==](https://github.com/meltingscales/ITMS448-osint-dashboard-Bowser)

#### Summary

An OSINT dashboard for gathering intelligence from multiple sources.

The project's name is Bowser, named after [Mary Bowser](https://en.wikipedia.org/wiki/Mary_Bowser).

We are focusing on domestic terrorism.

We scraped 4chan and Reddit using their publicly available APIs.

We used old NSA ECHELON/PRISM lists of keywords that could indicate domestic terrorist/hate crime activity. This is a naive approach, but I feel that our code can easily be adapted. [Our "`ContentFlagger`" class can be easily adapted to use different types of classification methods](https://github.com/meltingscales/ITMS448-osint-dashboard-Bowser/blob/cb25a756e7b59990813ac3b85f42b48a7a44c9a6/bowser/contentFlagger.py#L49).

##### `ContentFlagger` modular code
```py
class ContentFlagger:
	"""A class that can flag content as containing specific words or phrases."""

    # ...
    # See this `flag_content` method - a naive approach using keyword matching![![alt text](image-1.png)](image.png)
	def flag_content(self, content: str) -> bool:
		"""Apply this ContentFlagger's analysis to some content. Returns T/F"""

		if content is None:  # thanks for the null values json <3 i feel like i'm in Java all over again
			return False

		# check all our keywords
		for word in self.keywords:

			# If we don't care about case, lower everything.
			if not self.keywords_case_sensitive:
				word = str(word).lower()
				content = content.lower()

			if word in content.split(" "):  # split by spaces -- word must be padded by spaces
				return True

		# check all our regex
		for rexp in self.regex_matches:
			if re.compile(rexp).match(content):
				return True

		return False

```

### Improving Incident Response of the American Red Cross in the Greater Chicago Area by Using Text Classification of Posts From Twitter

[==> See this link for a PDF presentation <==](/static/IPRO%20-%20Improving%20Incident%20Response%20of%20the%20American%20Red%20Cross%20in%20the%20Greater%20Chicago%20Area%20by%20Using%20Text%20Classification%20of%20Posts%20From%20Twitter.pdf)

#### Summary

This project developed an innovative tool to enhance the American Red Cross’s emergency response by leveraging social media data, specifically by mining and classifying tweets related to house fires in the Chicago area. By integrating a Twitter scraper that filters posts based on keywords and filters by geolocation, with a suite of machine learning models—including Naive Bayes, Logistic Regression, and notably Linear Support Vector Classification—our team demonstrated an effective way to sift through vast amounts of social media content. This approach enables the rapid identification of critical incidents such as house fires and floods, significantly reducing the need for manual data review.

This tool and the associated machine learning models could be used in many different ways:

- To enrich an existing data feed
- As a standalone tool for incident detection
- As a way to provide real-time data to emergency responders
- As a way to provide real-time data to the public or citizen scientists
- Any other way! Go clone our repo and try it out! 😁

The analysis revealed that while the automated system is promising—accurately detecting disaster-related tweets and providing a streamlined process for incident reporting—there is still room for improvement. Future enhancements, such as deeper integration of the scraper with the classifier and the implementation of active learning strategies, could further refine accuracy and reduce false positives. Overall, this project lays a strong foundation for harnessing real-time social media data to support timely and informed emergency response efforts, paving the way for smarter, data-driven disaster management solutions.

Ideally, Twitter should provide these sorts of feeds to emergency responders, but until then, we have to rely on our own tools. Social media is a powerful tool for emergency response, and we hope that our work can help save lives and reduce the impact of disasters. 🌍🔥🌊

## 2020

### Vulnerability "Field Guide" - CWE Reference Manual

I created a "field guide" that provides a comprehensive overview of common vulnerabilities and their remediation strategies. This guide is intended to serve as a reference for security engineers and developers, helping them to quickly identify and address vulnerabilities in their code.

It was over 20 pages, covered hundreds of different CWE types, and was a great resource for our team. I believe that it is still being used by my team today, in 2025.

## 2021

## 2022

### A survey on automated software vulnerability discovery, exploitation, and patching - NYU-CS-GY-6813 - Infosec and Privacy

This paper is a survey of the current state of automated software vulnerability discovery, exploitation, and patching. It covers the history of automated vulnerability discovery, the current state of the art, and future directions for research.

Its main conclusion is that solely human-powered vulnerability discovery is no longer sufficient to keep up with the pace of software development. Automated tools are necessary to keep up with the pace of software development and the increasing complexity of software systems.

It seems that the growth of vulnerabilities is hyper-linear, and that the number of vulnerabilities is growing faster than the number of software developers. This is a worrying trend, and it is likely that the number of vulnerabilities will continue to grow in the future.

[==> See this link for source code! <==](https://github.com/meltingscales/NYU-CS-GY-6813-infosec-and-privacy/tree/master/paper/final)

<iframe width="560" height="315" src="https://www.youtube.com/embed/BgICl-5bqbQ?si=QxhW5DyURWL57YWK" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


## 2023

### Vulnerabilities in Open-Source Language Servers - NYU-CS-GY-6233 - Intro to OS

[==> See this link for source code! <==](https://github.com/meltingscales/NYU-CS-GY-6233-intro-to-os-final-paper)

<iframe width="560" height="315" src="https://www.youtube.com/embed/msj1KjN7eb8?si=AnzAFE22jZzZWmiT" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## 2024

### Hidden Vulnerabilities in Google Play Store Apps - NYU-CS-GY-9223 - Mobile Security

[==> See this link for source code! <==](https://github.com/meltingscales/NYU-CS-GY-6xxx-mobile-security-final-project)

[==> See this link for a PDF presentation <==](https://github.com/meltingscales/NYU-CS-GY-6xxx-mobile-security-final-project/blob/master/MobSec%20Final%20Presentation.pdf)

#### Summary

This is a survey of 10 semi-randomly selected apps from the Google Play Store. We found that all of the apps had at least one vulnerability, and that some of the vulnerabilities were severe. We also found that there were some slight accuracy issues with free SAST/Secrets tools.

We used simple, free, open-source tools to extract the APK, and decompile them. We also used a free SAST tool to scan the source code for vulnerabilities.

## 2025

TBD