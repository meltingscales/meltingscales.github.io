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

TBD: Link

#### Summary

TBD

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

## 2021

## 2022

## 2023

### Vulnerabilities in Open-Source Language Servers

TBD

hyper-linear growth of vulnerabilities paper, too

https://github.com/meltingscales/NYU-CS-GY-6233-intro-to-os-final-paper

## 2024

## 2025
