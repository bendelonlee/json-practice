require "./lib/story"
require "minitest/autorun"
class StoryTest < Minitest::Test
  def setup
    json_hash =
    {
      "section": "U.S.",
      "subsection": "Politics",
      "title": "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal",
      "abstract": "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help.",
      "url": "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html",
      "byline": "By MIKE McINTIRE, MEGAN TWOHEY and MARK MAZZETTI",
      "item_type": "Article",
      "updated_date": "2018-11-29T23:49:43-05:00",
      "created_date": "2018-11-29T18:46:27-05:00",
      "published_date": "2018-11-29T18:46:27-05:00",
      "material_type_facet": "",
      "kicker": "",
      "des_facet": [
        "Russian Interference in 2016 US Elections and Ties to Trump Associates",
        "Presidential Election of 2016",
        "United States Politics and Government",
        "Espionage and Intelligence Services"
      ],
      "org_facet": [
        "Federal Security Service",
        "House Committee on Intelligence",
        "Republican Party",
        "Trump Organization",
        "Trump Tower (Manhattan, NY)",
        "VTB Bank"
      ],
      "per_facet": [
        "Cohen, Michael D (1966- )",
        "Mueller, Robert S III",
        "Putin, Vladimir V",
        "Sater, Felix H",
        "Trump, Donald J",
        "Trump, Donald J Jr",
        "Trump, Ivanka"
      ],
      "geo_facet": [],
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-articleInline.jpg",
          "format": "Normal",
          "height": 127,
          "width": 190,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        }
      ],
      "short_url": "https://nyti.ms/2DSwlEI"
    }
    @story = Story.new(json_hash)
  end
  #
  # def test_it_loads_section
  #   assert_equal "U.S.", @story.section
  # end
  #
  # def test_it_loads_subsection
  #   assert_equal "Politics", @story.subsection
  # end
  #
  # def test_it_loads_title
  #   assert_equal "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal", @story.title
  # end
  #
  # def test_it_loads_abstract
  #   expected = "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help."
  #   assert_equal expected, @story.abstract
  # end
  #
  # def test_it_loads_link
  #   expected = "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html"
  #   assert_equal expected, @story.link
  # end
  #
  # def test_it_loads_published_date
  #   assert_equal "November 29, 2018", @story.published
  # end
  #
  # def test_it_loads_normal_photo
  #   expected = "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-articleInline.jpg"
  #   assert_equal expected, @story.photo
  # end

  def test_it_shows_no_photo_available
    json_hash = {
      "multimedia": [
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbStandard.jpg",
          "format": "Standard Thumbnail",
          "height": 75,
          "width": 75,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbLarge.jpg",
          "format": "thumbLarge",
          "height": 150,
          "width": 150,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-mediumThreeByTwo210.jpg",
          "format": "mediumThreeByTwo210",
          "height": 140,
          "width": 210,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        },
        {
          "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-superJumbo.jpg",
          "format": "superJumbo",
          "height": 1365,
          "width": 2048,
          "type": "image",
          "subtype": "photo",
          "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
          "copyright": ""
        }
      ]
    }
    story_with_no_normal_photo = Story.new(json_hash)
    assert_equal "No Photo Available", @story.photo
  end
  def test_load_stories
    stories = Story.load_stories(
      {
        "status": "OK",
        "copyright": "Copyright (c) 2018 The New York Times Company. All Rights Reserved.",
        "section": "home",
        "last_updated": "2018-11-30T10:07:06-05:00",
        "num_results": 43,
        "results": [
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal",
            "abstract": "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help.",
            "url": "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html",
            "byline": "By MIKE McINTIRE, MEGAN TWOHEY and MARK MAZZETTI",
            "item_type": "Article",
            "updated_date": "2018-11-29T23:49:43-05:00",
            "created_date": "2018-11-29T18:46:27-05:00",
            "published_date": "2018-11-29T18:46:27-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Presidential Election of 2016",
              "United States Politics and Government",
              "Espionage and Intelligence Services"
            ],
            "org_facet": [
              "Federal Security Service",
              "House Committee on Intelligence",
              "Republican Party",
              "Trump Organization",
              "Trump Tower (Manhattan, NY)",
              "VTB Bank"
            ],
            "per_facet": [
              "Cohen, Michael D (1966- )",
              "Mueller, Robert S III",
              "Putin, Vladimir V",
              "Sater, Felix H",
              "Trump, Donald J",
              "Trump, Donald J Jr",
              "Trump, Ivanka"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30trumpmoscow-1-print/30trumpmoscow7-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Felix Sater, a longtime business associate of President Trump&rsquo;s, drew on deep Russian contacts to pursue a real estate deal during the 2016 campaign. One of those contacts was a former intelligence official in Russia.",
                "copyright": ""
              }
            ],
            "short_url": "https://nyti.ms/2DSwlEI"
          },
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "Trump Denies Business Dealings With Russia. His Former Lawyer Contradicts Him.",
            "abstract": "For years, the president has denied that he had any business interests in Russia during the 2016 election. His former personal lawyer now says otherwise.",
            "url": "https://www.nytimes.com/2018/11/29/us/politics/fact-check-cohen-trump-.html",
            "byline": "By LINDA QIU",
            "item_type": "Article",
            "updated_date": "2018-11-29T19:55:33-05:00",
            "created_date": "2018-11-29T19:55:33-05:00",
            "published_date": "2018-11-29T19:55:33-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "United States Politics and Government",
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Presidential Election of 2016",
              "United States International Relations",
              "Rumors and Misinformation"
            ],
            "org_facet": [
              "Trump Organization"
            ],
            "per_facet": [
              "Trump, Donald J",
              "Cohen, Michael D (1966- )"
            ],
            "geo_facet": [
              "Moscow (Russia)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-factcheck/30dc-factcheck-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump boarded Air Force One on Thursday.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-factcheck/30dc-factcheck-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump boarded Air Force One on Thursday.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-factcheck/merlin_147477981_80cf7251-5c79-4caa-a198-32c4ea269b77-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump boarded Air Force One on Thursday.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-factcheck/merlin_147477981_80cf7251-5c79-4caa-a198-32c4ea269b77-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump boarded Air Force One on Thursday.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-factcheck/merlin_147477981_80cf7251-5c79-4caa-a198-32c4ea269b77-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump boarded Air Force One on Thursday.",
                "copyright": "Tom Brenner for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2DU3RdM"
          },
          {
            "section": "U.S.",
            "subsection": "",
            "title": "Louisiana School Made Headlines for Sending Black Kids to Elite Colleges. Here’s the Reality.",
            "abstract": "T.M. Landry, a school in small-town Louisiana, has garnered national attention for vaulting its underprivileged black students to elite colleges. But the school cut corners and doctored college applications.",
            "url": "https://www.nytimes.com/2018/11/30/us/tm-landry-college-prep-black-students.html",
            "byline": "By ERICA L. GREEN, KATIE BENNER and ANNIE FLANAGAN",
            "item_type": "Article",
            "updated_date": "2018-11-30T03:04:14-05:00",
            "created_date": "2018-11-30T03:00:15-05:00",
            "published_date": "2018-11-30T03:00:15-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Education (K-12)",
              "Private and Sectarian Schools",
              "Admissions Standards",
              "Blacks",
              "Colleges and Universities"
            ],
            "org_facet": [
              "TM Landry College Preparatory (Breaux Bridge, La)"
            ],
            "per_facet": [
              "Landry, Michael (1969- )",
              "Landry, Tracey J (1968- )"
            ],
            "geo_facet": [
              "Breaux Bridge (La)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30dc-landry-social/30dc-landry-social-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30dc-landry-social/30dc-landry-social-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30dc-landry-social/30dc-landry-social-articleInline.jpg",
                "format": "Normal",
                "height": 107,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30dc-landry-social/30dc-landry-social-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30dc-landry-social/30dc-landry-social-superJumbo.jpg",
                "format": "superJumbo",
                "height": 900,
                "width": 1600,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Annie Flanagan for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zyUBIW"
          },
          {
            "section": "U.S.",
            "subsection": "",
            "title": "6 Takeaways From the Times’s Investigation Into T.M. Landry",
            "abstract": "Based on interviews with 46 people, including parents, former and current students and more, and examinations of legal and school records, The Times found the school abused students and doctored college applications.",
            "url": "https://www.nytimes.com/2018/11/30/us/college-acceptance-black-students.html",
            "byline": "By ERICA L. GREEN and KATIE BENNER",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:14-05:00",
            "created_date": "2018-11-30T05:00:14-05:00",
            "published_date": "2018-11-30T05:00:14-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Education (K-12)",
              "Private and Sectarian Schools",
              "Admissions Standards",
              "Blacks",
              "Colleges and Universities"
            ],
            "org_facet": [
              "TM Landry College Preparatory (Breaux Bridge, La)"
            ],
            "per_facet": [
              "Landry, Michael (1969- )",
              "Landry, Tracey J (1968- )"
            ],
            "geo_facet": [
              "Breaux Bridge (La)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-landry-takeaways/30dc-landry-takeaways-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Former students of T.M. Landry College Preparatory School.",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-landry-takeaways/30dc-landry-takeaways-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Former students of T.M. Landry College Preparatory School.",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-landry-takeaways/merlin_146241948_6e308a30-e547-44cf-a0a3-edea10bd03a2-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Former students of T.M. Landry College Preparatory School.",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-landry-takeaways/merlin_146241948_6e308a30-e547-44cf-a0a3-edea10bd03a2-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Former students of T.M. Landry College Preparatory School.",
                "copyright": "Annie Flanagan for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-landry-takeaways/merlin_146241948_6e308a30-e547-44cf-a0a3-edea10bd03a2-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Former students of T.M. Landry College Preparatory School.",
                "copyright": "Annie Flanagan for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zBbYsx"
          },
          {
            "section": "Business",
            "subsection": "",
            "title": "Marriott Hacking Exposes Data of Up to 500 Million Guests",
            "abstract": "Personal details including names, dates of birth, passport numbers and payment numbers could be at risk, the hotel chain said.",
            "url": "https://www.nytimes.com/2018/11/30/business/marriott-data-breach.html",
            "byline": "By AMIE TSANG",
            "item_type": "Article",
            "updated_date": "2018-11-30T08:56:11-05:00",
            "created_date": "2018-11-30T07:33:48-05:00",
            "published_date": "2018-11-30T07:33:48-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Cyberattacks and Hackers",
              "Computer Security"
            ],
            "org_facet": [
              "Marriott International Inc"
            ],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/01/business/01marriot/01marriot-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Marriott International acknowledged on Friday that an “unauthorized party had copied and encrypted information” about 500 million customers on one of its reservations systems in September.",
                "copyright": "Mauritz Antin/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/business/01marriot/01marriot-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Marriott International acknowledged on Friday that an “unauthorized party had copied and encrypted information” about 500 million customers on one of its reservations systems in September.",
                "copyright": "Mauritz Antin/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/business/01marriot/merlin_147517380_3026d611-16f6-434c-bcf9-86ce56c8b3da-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Marriott International acknowledged on Friday that an “unauthorized party had copied and encrypted information” about 500 million customers on one of its reservations systems in September.",
                "copyright": "Mauritz Antin/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/business/01marriot/merlin_147517380_3026d611-16f6-434c-bcf9-86ce56c8b3da-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Marriott International acknowledged on Friday that an “unauthorized party had copied and encrypted information” about 500 million customers on one of its reservations systems in September.",
                "copyright": "Mauritz Antin/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/business/01marriot/merlin_147517380_3026d611-16f6-434c-bcf9-86ce56c8b3da-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Marriott International acknowledged on Friday that an “unauthorized party had copied and encrypted information” about 500 million customers on one of its reservations systems in September.",
                "copyright": "Mauritz Antin/EPA, via Shutterstock"
              }
            ],
            "short_url": "https://nyti.ms/2DPC2D4"
          },
          {
            "section": "Technology",
            "subsection": "",
            "title": "Sheryl Sandberg Is Said to Have Asked Facebook Staff to Research George Soros",
            "abstract": "Facebook’s second in command wanted an examination of the billionaire’s financial ties after he delivered a blistering speech about tech companies, said people with knowledge of her request.",
            "url": "https://www.nytimes.com/2018/11/29/technology/george-soros-facebook-sheryl-sandberg.html",
            "byline": "By NICHOLAS CONFESSORE and MATTHEW ROSENBERG",
            "item_type": "Article",
            "updated_date": "2018-11-29T23:37:06-05:00",
            "created_date": "2018-11-29T21:32:22-05:00",
            "published_date": "2018-11-29T21:32:22-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Social Media",
              "Computers and the Internet",
              "Corporate Social Responsibility"
            ],
            "org_facet": [
              "Facebook Inc",
              "Definers Public Affairs"
            ],
            "per_facet": [
              "Sandberg, Sheryl K",
              "Soros, George"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/business/30sandberg-print/30sandberg1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Sheryl Sandberg, Facebook’s chief operating officer, wanted to know whether George Soros stood to gain from criticizing the company, according to people with knowledge of an email she sent.",
                "copyright": "Eric Thayer for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/business/30sandberg-print/30sandberg1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Sheryl Sandberg, Facebook’s chief operating officer, wanted to know whether George Soros stood to gain from criticizing the company, according to people with knowledge of an email she sent.",
                "copyright": "Eric Thayer for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/business/30sandberg-print/merlin_143304201_4bc6f830-6888-4d33-ab7a-e133fef428e1-articleInline.jpg",
                "format": "Normal",
                "height": 126,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Sheryl Sandberg, Facebook’s chief operating officer, wanted to know whether George Soros stood to gain from criticizing the company, according to people with knowledge of an email she sent.",
                "copyright": "Eric Thayer for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/business/30sandberg-print/30sandberg1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Sheryl Sandberg, Facebook’s chief operating officer, wanted to know whether George Soros stood to gain from criticizing the company, according to people with knowledge of an email she sent.",
                "copyright": "Eric Thayer for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/business/30sandberg-print/merlin_143304201_4bc6f830-6888-4d33-ab7a-e133fef428e1-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1356,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Sheryl Sandberg, Facebook’s chief operating officer, wanted to know whether George Soros stood to gain from criticizing the company, according to people with knowledge of an email she sent.",
                "copyright": "Eric Thayer for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2DUaHjs"
          },
          {
            "section": "Technology",
            "subsection": "",
            "title": "Delay, Deny and Deflect: How Facebook’s Leaders Fought Through Crisis",
            "abstract": "Russian meddling, data sharing, hate speech — the social network faced one scandal after another. This is how Mark Zuckerberg and Sheryl Sandberg responded.",
            "url": "https://www.nytimes.com/2018/11/14/technology/facebook-data-russia-election-racism.html",
            "byline": "By SHEERA FRENKEL, NICHOLAS CONFESSORE, CECILIA KANG, MATTHEW ROSENBERG and JACK NICAS",
            "item_type": "Article",
            "updated_date": "2018-11-15T06:30:44-05:00",
            "created_date": "2018-11-14T16:01:00-05:00",
            "published_date": "2018-11-14T16:01:00-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Data-Mining and Database Marketing",
              "Rumors and Misinformation",
              "Cyberwarfare and Defense",
              "Privacy",
              "United States Politics and Government",
              "Political Advertising"
            ],
            "org_facet": [
              "Facebook Inc"
            ],
            "per_facet": [
              "Sandberg, Sheryl K",
              "Zuckerberg, Mark E"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/15/business/15facebookdip-promo/15facebookdip-promo-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Under Mark Zuckerberg, the founder, and Sheryl Sandberg, the chief operating officer, Facebook has gone on the attack amid mounting scandals.",
                "copyright": "The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/15/business/15facebookdip-promo/15facebookdip-promo-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Under Mark Zuckerberg, the founder, and Sheryl Sandberg, the chief operating officer, Facebook has gone on the attack amid mounting scandals.",
                "copyright": "The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/15/business/15facebookdip-promo/15facebookdip-promo-articleInline.jpg",
                "format": "Normal",
                "height": 133,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Under Mark Zuckerberg, the founder, and Sheryl Sandberg, the chief operating officer, Facebook has gone on the attack amid mounting scandals.",
                "copyright": "The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/15/business/15facebookdip-promo/15facebookdip-promo-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Under Mark Zuckerberg, the founder, and Sheryl Sandberg, the chief operating officer, Facebook has gone on the attack amid mounting scandals.",
                "copyright": "The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/15/business/15facebookdip-promo/15facebookdip-promo-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1433,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Under Mark Zuckerberg, the founder, and Sheryl Sandberg, the chief operating officer, Facebook has gone on the attack amid mounting scandals.",
                "copyright": "The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2DlsGPi"
          },
          {
            "section": "World",
            "subsection": "Europe",
            "title": "Despite Frosty Ties for Trump and Trudeau, ‘New Nafta’ Is Signed",
            "abstract": "The road to a new agreement between Canada, Mexico and the U.S. has soured the relationship between the two leaders.",
            "url": "https://www.nytimes.com/2018/11/30/world/europe/usmca-trump-justin-trudeau.html",
            "byline": "By DAN BILEFSKY",
            "item_type": "Article",
            "updated_date": "2018-11-30T10:00:38-05:00",
            "created_date": "2018-11-30T07:53:38-05:00",
            "published_date": "2018-11-30T07:53:38-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "International Trade and World Market",
              "Dairy Products",
              "Customs (Tariff)"
            ],
            "org_facet": [
              "Group of Seven"
            ],
            "per_facet": [
              "Freeland, Chrystia",
              "Lighthizer, Robert E",
              "Trudeau, Justin",
              "Trump, Donald J"
            ],
            "geo_facet": [
              "Canada"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/01/world/01canada-g20-3/01canada-g20-3-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "President Enrique Peña Nieto of Mexico, President Trump and Prime Minister Justin Trudeau of Canada signed a new free trade agreement in Buenos Aires on Friday to replace Nafta.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/world/01canada-g20-3/01canada-g20-3-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "President Enrique Peña Nieto of Mexico, President Trump and Prime Minister Justin Trudeau of Canada signed a new free trade agreement in Buenos Aires on Friday to replace Nafta.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/world/01canada-g20-3/merlin_147518682_a822290b-54a8-4633-9cfb-c44af4f2c909-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "President Enrique Peña Nieto of Mexico, President Trump and Prime Minister Justin Trudeau of Canada signed a new free trade agreement in Buenos Aires on Friday to replace Nafta.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/world/01canada-g20-3/merlin_147518682_a822290b-54a8-4633-9cfb-c44af4f2c909-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "President Enrique Peña Nieto of Mexico, President Trump and Prime Minister Justin Trudeau of Canada signed a new free trade agreement in Buenos Aires on Friday to replace Nafta.",
                "copyright": "Tom Brenner for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/world/01canada-g20-3/merlin_147518682_a822290b-54a8-4633-9cfb-c44af4f2c909-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "President Enrique Peña Nieto of Mexico, President Trump and Prime Minister Justin Trudeau of Canada signed a new free trade agreement in Buenos Aires on Friday to replace Nafta.",
                "copyright": "Tom Brenner for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zsk32L"
          },
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "At Stake When Xi and Trump Meet: The Possibility of a New Cold War",
            "abstract": "President Trump’s encounter with President Xi Jinping in Buenos Aires will be the biggest test yet of whether Mr. Trump’s cultivation of the Chinese leader can overcome their differences.",
            "url": "https://www.nytimes.com/2018/11/30/us/politics/trump-xi-g-20.html",
            "byline": "By MARK LANDLER and JANE PERLEZ",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:21-05:00",
            "created_date": "2018-11-30T05:00:21-05:00",
            "published_date": "2018-11-30T05:00:21-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "United States International Relations",
              "International Trade and World Market"
            ],
            "org_facet": [
              "Group of Twenty"
            ],
            "per_facet": [
              "Liu He (1952- )",
              "Xi Jinping",
              "Trump, Donald J",
              "Navarro, Peter"
            ],
            "geo_facet": [
              "Buenos Aires (Argentina)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-trumpxi1/30dc-trumpxi1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "The meeting between President Trump and President Xi Jinping of China in Buenos Aires this weekend will be a test of whether their relationship can survive Mr. Trump’s escalating tariffs.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-trumpxi1/30dc-trumpxi1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "The meeting between President Trump and President Xi Jinping of China in Buenos Aires this weekend will be a test of whether their relationship can survive Mr. Trump’s escalating tariffs.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-trumpxi1/merlin_129870269_cb5d8a77-0329-424c-8e27-f7ef32e659c0-articleInline.jpg",
                "format": "Normal",
                "height": 121,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "The meeting between President Trump and President Xi Jinping of China in Buenos Aires this weekend will be a test of whether their relationship can survive Mr. Trump’s escalating tariffs.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-trumpxi1/30dc-trumpxi1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "The meeting between President Trump and President Xi Jinping of China in Buenos Aires this weekend will be a test of whether their relationship can survive Mr. Trump’s escalating tariffs.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-trumpxi1/merlin_129870269_cb5d8a77-0329-424c-8e27-f7ef32e659c0-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1303,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "The meeting between President Trump and President Xi Jinping of China in Buenos Aires this weekend will be a test of whether their relationship can survive Mr. Trump’s escalating tariffs.",
                "copyright": "Doug Mills/The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zyAhap"
          },
          {
            "section": "World",
            "subsection": "Americas",
            "title": "After Khashoggi Killing, Leaders at G-20 Weigh How to Deal With Saudi Prince",
            "abstract": "An awkward question hangs over the Group of 20 summit: How will the gathered leaders handle Crown Prince Mohammed bin Salman, amid accusations he orchestrated the killing of Jamal Khashoggi?",
            "url": "https://www.nytimes.com/2018/11/29/world/americas/g20-audi-prince-khashoggi.html",
            "byline": "By DANIEL POLITI and DAVID D. KIRKPATRICK",
            "item_type": "Article",
            "updated_date": "2018-11-29T23:17:06-05:00",
            "created_date": "2018-11-29T18:44:05-05:00",
            "published_date": "2018-11-29T18:44:05-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Human Rights and Human Rights Violations",
              "War Crimes, Genocide and Crimes Against Humanity",
              "Assassinations and Attempted Assassinations"
            ],
            "org_facet": [
              "Group of Twenty"
            ],
            "per_facet": [
              "Khashoggi, Jamal",
              "Macri, Mauricio",
              "Macron, Emmanuel (1977- )",
              "Mohammed bin Salman (1985- )",
              "Trump, Donald J"
            ],
            "geo_facet": [
              "Argentina"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30mbs/30mbs-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Crown Prince Mohammed bin Salman of Saudi Arabia arriving in Buenos Aires for the G-20 summit, where other world leaders will have to gauge how to interact with him.",
                "copyright": "G20 Press Office"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30mbs/30mbs-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Crown Prince Mohammed bin Salman of Saudi Arabia arriving in Buenos Aires for the G-20 summit, where other world leaders will have to gauge how to interact with him.",
                "copyright": "G20 Press Office"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30mbs/merlin_147471180_2b96b11d-fb12-4537-89d0-f2c4cc02eff1-articleInline.jpg",
                "format": "Normal",
                "height": 125,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Crown Prince Mohammed bin Salman of Saudi Arabia arriving in Buenos Aires for the G-20 summit, where other world leaders will have to gauge how to interact with him.",
                "copyright": "G20 Press Office"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30mbs/30mbs-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Crown Prince Mohammed bin Salman of Saudi Arabia arriving in Buenos Aires for the G-20 summit, where other world leaders will have to gauge how to interact with him.",
                "copyright": "G20 Press Office"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30mbs/merlin_147471180_2b96b11d-fb12-4537-89d0-f2c4cc02eff1-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1349,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Crown Prince Mohammed bin Salman of Saudi Arabia arriving in Buenos Aires for the G-20 summit, where other world leaders will have to gauge how to interact with him.",
                "copyright": "G20 Press Office"
              }
            ],
            "short_url": "https://nyti.ms/2zwxO0u"
          },
          {
            "section": "Magazine",
            "subsection": "",
            "title": "In Donald Trump’s Census, Who Counts?",
            "abstract": "How the Trump administration’s plan to add a controversial new question to the 2020 census could transform a pillar of American democracy.",
            "url": "https://www.nytimes.com/2018/11/28/magazine/donald-trump-census.html",
            "byline": "By EMILY BAZELON",
            "item_type": "Article",
            "updated_date": "2018-11-28T05:00:01-05:00",
            "created_date": "2018-11-28T05:00:02-05:00",
            "published_date": "2018-11-28T05:00:02-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Census",
              "Population",
              "Voter Registration and Requirements"
            ],
            "org_facet": [
              "Census Bureau"
            ],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/02/magazine/02mag-Census-1/02mag-Census-1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Photo illustration by Tyler Comrie. Body source photograph: Luke Sharrett/Bloomberg, via Getty Images. Counter source photograph: Stefan Kunert/Alamy."
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/magazine/02mag-Census-1/02mag-Census-1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Photo illustration by Tyler Comrie. Body source photograph: Luke Sharrett/Bloomberg, via Getty Images. Counter source photograph: Stefan Kunert/Alamy."
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/magazine/02mag-Census-1/02mag-Census-1-articleInline.jpg",
                "format": "Normal",
                "height": 229,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Photo illustration by Tyler Comrie. Body source photograph: Luke Sharrett/Bloomberg, via Getty Images. Counter source photograph: Stefan Kunert/Alamy."
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/magazine/02mag-Census-1/02mag-Census-1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Photo illustration by Tyler Comrie. Body source photograph: Luke Sharrett/Bloomberg, via Getty Images. Counter source photograph: Stefan Kunert/Alamy."
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/magazine/02mag-Census-1/02mag-Census-1-superJumbo.jpg",
                "format": "superJumbo",
                "height": 2048,
                "width": 1698,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Photo illustration by Tyler Comrie. Body source photograph: Luke Sharrett/Bloomberg, via Getty Images. Counter source photograph: Stefan Kunert/Alamy."
              }
            ],
            "short_url": "https://nyti.ms/2DMg3Nw"
          },
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "Federal Employees Are Warned Not to Discuss Trump ‘Resistance’ at Work",
            "abstract": "An independent agency has said talk of impeachment or “resistance” could be forbidden by a law that bars federal employees from taking part in partisan political campaigns at work.",
            "url": "https://www.nytimes.com/2018/11/29/us/politics/federal-employees-hatch-act-trump-impeachment.html",
            "byline": "By CHARLIE SAVAGE",
            "item_type": "Article",
            "updated_date": "2018-11-29T18:42:20-05:00",
            "created_date": "2018-11-29T18:42:20-05:00",
            "published_date": "2018-11-29T18:42:20-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Government Employees",
              "Hatch Act (1939)",
              "Presidential Election of 2020",
              "Impeachment"
            ],
            "org_facet": [
              "United States Office of Special Counsel"
            ],
            "per_facet": [
              "Trump, Donald J"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-ethics-print/merlin_146539257_0ee64f76-f2bd-416f-aaaf-de30f5cf5d88-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Speaking in support of or against the “resistance” to President Trump in a federal workplace would probably be illegal, according to an independent government agency.",
                "copyright": "Michael Reynolds/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-ethics-print/merlin_146539257_0ee64f76-f2bd-416f-aaaf-de30f5cf5d88-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Speaking in support of or against the “resistance” to President Trump in a federal workplace would probably be illegal, according to an independent government agency.",
                "copyright": "Michael Reynolds/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-ethics-print/merlin_146539257_0ee64f76-f2bd-416f-aaaf-de30f5cf5d88-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Speaking in support of or against the “resistance” to President Trump in a federal workplace would probably be illegal, according to an independent government agency.",
                "copyright": "Michael Reynolds/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-ethics-print/merlin_146539257_0ee64f76-f2bd-416f-aaaf-de30f5cf5d88-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Speaking in support of or against the “resistance” to President Trump in a federal workplace would probably be illegal, according to an independent government agency.",
                "copyright": "Michael Reynolds/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/politics/30dc-ethics-print/merlin_146539257_0ee64f76-f2bd-416f-aaaf-de30f5cf5d88-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Speaking in support of or against the “resistance” to President Trump in a federal workplace would probably be illegal, according to an independent government agency.",
                "copyright": "Michael Reynolds/EPA, via Shutterstock"
              }
            ],
            "short_url": "https://nyti.ms/2DSvcwU"
          },
          {
            "section": "Briefing",
            "subsection": "",
            "title": "Michael Cohen, Facebook, G-20: Your (New) Friday Briefing",
            "abstract": "Here’s what you need to know to start your day.",
            "url": "https://www.nytimes.com/2018/11/30/briefing/michael-cohen-facebook-g20.html",
            "byline": "By CHRIS STANFORD",
            "item_type": "Article",
            "updated_date": "2018-11-30T09:02:09-05:00",
            "created_date": "2018-11-30T05:40:13-05:00",
            "published_date": "2018-11-30T05:40:13-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30us-ambriefing-g20-AMCORE/30us-ambriefing-g20-sub-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30us-ambriefing-g20-AMCORE/30us-ambriefing-g20-sub-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30us-ambriefing-g20-AMCORE/merlin_147498237_f74a8915-7e6d-4f6f-97c4-fdad94944665-articleInline.jpg",
                "format": "Normal",
                "height": 133,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30us-ambriefing-g20-AMCORE/merlin_147498237_f74a8915-7e6d-4f6f-97c4-fdad94944665-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30us-ambriefing-g20-AMCORE/30us-ambriefing-g20-AMCORE-superJumbo.jpg",
                "format": "superJumbo",
                "height": 188,
                "width": 624,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": ""
              }
            ],
            "short_url": "https://nyti.ms/2zyCtPb"
          },
          {
            "section": "New York",
            "subsection": "New York Today",
            "title": "N.Y. Today: The City Has Few Statues of Women. Here Comes Shirley Chisholm.",
            "abstract": "The first black woman to serve in Congress will get a monument in Brooklyn. Also: a rapper’s rise and fall, and giant menorahs.",
            "url": "https://www.nytimes.com/2018/11/30/nyregion/newyorktoday/new-york-news-chisholm-statue.html",
            "byline": "By AZI PAYBARAH",
            "item_type": "Article",
            "updated_date": "2018-11-30T08:05:20-05:00",
            "created_date": "2018-11-30T06:15:28-05:00",
            "published_date": "2018-11-30T06:15:28-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Monuments and Memorials (Structures)",
              "Women and Girls"
            ],
            "org_facet": [
              "House of Representatives"
            ],
            "per_facet": [
              "Chisholm, Shirley"
            ],
            "geo_facet": [
              "New York City",
              "Prospect Park (Brooklyn, NY)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30nytoday01/30nytoday01-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Shirley Chisholm in 1972. She was the first black woman to serve in Congress, representing a House district in Brooklyn.",
                "copyright": "Richard Drew/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30nytoday01/30nytoday01-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Shirley Chisholm in 1972. She was the first black woman to serve in Congress, representing a House district in Brooklyn.",
                "copyright": "Richard Drew/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30nytoday01/merlin_146670909_a7d90cea-71df-41d1-bb8b-7b6e6e36f161-articleInline.jpg",
                "format": "Normal",
                "height": 130,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Shirley Chisholm in 1972. She was the first black woman to serve in Congress, representing a House district in Brooklyn.",
                "copyright": "Richard Drew/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30nytoday01/30nytoday01-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Shirley Chisholm in 1972. She was the first black woman to serve in Congress, representing a House district in Brooklyn.",
                "copyright": "Richard Drew/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30nytoday01/merlin_146670909_a7d90cea-71df-41d1-bb8b-7b6e6e36f161-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1399,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Shirley Chisholm in 1972. She was the first black woman to serve in Congress, representing a House district in Brooklyn.",
                "copyright": "Richard Drew/Associated Press"
              }
            ],
            "short_url": "https://nyti.ms/2DUacpx"
          },
          {
            "section": "Opinion",
            "subsection": "",
            "title": "Cohen Lied. Here’s Why It Matters.",
            "abstract": "With Michael Cohen’s latest deal, the special counsel shows he is unafraid of crossing Donald Trump’s red lines on Russia.",
            "url": "https://www.nytimes.com/2018/11/29/opinion/cohen-trump-lies-russia-mueller.html",
            "byline": "By THE EDITORIAL BOARD",
            "item_type": "Article",
            "updated_date": "2018-11-30T07:26:22-05:00",
            "created_date": "2018-11-29T20:00:27-05:00",
            "published_date": "2018-11-29T20:00:27-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Presidential Election of 2016",
              "United States Politics and Government"
            ],
            "org_facet": [
              "Trump Organization"
            ],
            "per_facet": [
              "Cohen, Michael D (1966- )",
              "Trump, Donald J",
              "Mueller, Robert S III",
              "Putin, Vladimir V"
            ],
            "geo_facet": [
              "Manhattan (NYC)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29Cohen-edt/29Cohen-edt-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Lauren Simkin Berke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29Cohen-edt/29Cohen-edt-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Lauren Simkin Berke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29Cohen-edt/merlin_147498267_6c160efd-a7ca-4e6d-bc2b-ddeef67d4d65-articleInline.jpg",
                "format": "Normal",
                "height": 111,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Lauren Simkin Berke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29Cohen-edt/29Cohen-edt-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Lauren Simkin Berke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29Cohen-edt/merlin_147498267_6c160efd-a7ca-4e6d-bc2b-ddeef67d4d65-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1000,
                "width": 1713,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Lauren Simkin Berke"
              }
            ],
            "short_url": "https://nyti.ms/2zAGvGV"
          },
          {
            "section": "Opinion",
            "subsection": "",
            "title": "Trump Is Compromised by Russia",
            "abstract": "Michael Cohen's latest plea is proof.",
            "url": "https://www.nytimes.com/2018/11/29/opinion/cohen-trump-putin-russia-mueller.html",
            "byline": "By MICHELLE GOLDBERG",
            "item_type": "Article",
            "updated_date": "2018-11-29T21:11:48-05:00",
            "created_date": "2018-11-29T19:49:39-05:00",
            "published_date": "2018-11-29T19:49:39-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Presidential Election of 2016",
              "United States Politics and Government"
            ],
            "org_facet": [
              "Republican Party",
              "WikiLeaks"
            ],
            "per_facet": [
              "Trump, Donald J",
              "Cohen, Michael D (1966- )",
              "Mueller, Robert S III",
              "Clinton, Hillary Rodham",
              "Corsi, Jerome R",
              "Putin, Vladimir V",
              "Sater, Felix H",
              "Stone, Roger J Jr",
              "Trump, Donald J Jr"
            ],
            "geo_facet": [
              "Moscow (Russia)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30goldbergSub/30goldbergSub-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump answered questions at the White House on Thursday about a Trump building project in Moscow. His former lawyer Michael Cohen admitted in court on Thursday that he had engaged in negotiations on the project well into the 2016 presidential campaign.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30goldbergSub/30goldbergSub-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump answered questions at the White House on Thursday about a Trump building project in Moscow. His former lawyer Michael Cohen admitted in court on Thursday that he had engaged in negotiations on the project well into the 2016 presidential campaign.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30goldbergSub/merlin_147480354_48e73754-ac72-4572-b103-68ff5b319d1c-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump answered questions at the White House on Thursday about a Trump building project in Moscow. His former lawyer Michael Cohen admitted in court on Thursday that he had engaged in negotiations on the project well into the 2016 presidential campaign.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30goldbergSub/30goldbergSub-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump answered questions at the White House on Thursday about a Trump building project in Moscow. His former lawyer Michael Cohen admitted in court on Thursday that he had engaged in negotiations on the project well into the 2016 presidential campaign.",
                "copyright": "Doug Mills/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30goldbergSub/merlin_147480354_48e73754-ac72-4572-b103-68ff5b319d1c-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1371,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "President Trump answered questions at the White House on Thursday about a Trump building project in Moscow. His former lawyer Michael Cohen admitted in court on Thursday that he had engaged in negotiations on the project well into the 2016 presidential campaign.",
                "copyright": "Doug Mills/The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zvflkU"
          },
          {
            "section": "Opinion",
            "subsection": "",
            "title": "When MAGA Fantasy Meets Rust Belt Reality",
            "abstract": "Trump can’t run America by yelling at people. Who knew?",
            "url": "https://www.nytimes.com/2018/11/29/opinion/maga-trump-manufacturing.html",
            "byline": "By PAUL KRUGMAN",
            "item_type": "Article",
            "updated_date": "2018-11-29T19:00:04-05:00",
            "created_date": "2018-11-29T19:00:04-05:00",
            "published_date": "2018-11-29T19:00:04-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Layoffs and Job Reductions",
              "Factories and Manufacturing",
              "International Trade and World Market",
              "United States Politics and Government"
            ],
            "org_facet": [],
            "per_facet": [
              "Trump, Donald J"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29krugmanWeb/29krugmanWeb-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Union workers concerned about jobs interrupted President Trump at a rally in Ohio in early November.",
                "copyright": "David Maxwell/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29krugmanWeb/29krugmanWeb-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Union workers concerned about jobs interrupted President Trump at a rally in Ohio in early November.",
                "copyright": "David Maxwell/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29krugmanWeb/merlin_146377671_56e15b1a-0d1f-43f8-bf41-81838124ee0d-articleInline.jpg",
                "format": "Normal",
                "height": 135,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Union workers concerned about jobs interrupted President Trump at a rally in Ohio in early November.",
                "copyright": "David Maxwell/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29krugmanWeb/29krugmanWeb-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Union workers concerned about jobs interrupted President Trump at a rally in Ohio in early November.",
                "copyright": "David Maxwell/EPA, via Shutterstock"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/29krugmanWeb/merlin_146377671_56e15b1a-0d1f-43f8-bf41-81838124ee0d-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1460,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Union workers concerned about jobs interrupted President Trump at a rally in Ohio in early November.",
                "copyright": "David Maxwell/EPA, via Shutterstock"
              }
            ],
            "short_url": "https://nyti.ms/2zweeRX"
          },
          {
            "section": "Opinion",
            "subsection": "",
            "title": "What Cohen’s Deal Means for Trump",
            "abstract": "We can expect even bigger bombshells — and White House threats against Mueller — in the coming weeks.",
            "url": "https://www.nytimes.com/2018/11/29/opinion/cohen-deal-mueller-means-for-trump.html",
            "byline": "By BARRY BERKE, NOAH BOOKBINDER and NORMAN EISEN",
            "item_type": "Article",
            "updated_date": "2018-11-29T20:20:27-05:00",
            "created_date": "2018-11-29T16:24:14-05:00",
            "published_date": "2018-11-29T16:24:14-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Russian Interference in 2016 US Elections and Ties to Trump Associates",
              "Presidential Election of 2016",
              "United States Politics and Government",
              "Special Prosecutors (Independent Counsel)"
            ],
            "org_facet": [],
            "per_facet": [
              "Cohen, Michael D (1966- )",
              "Manafort, Paul J",
              "Mueller, Robert S III",
              "Trump, Donald J"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/eisennew/eisennew-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Cohen leaving the federal district court in Manhattan after entering a guilty plea for lying to Congress.",
                "copyright": "Andrew Kelly/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/eisennew/eisennew-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Cohen leaving the federal district court in Manhattan after entering a guilty plea for lying to Congress.",
                "copyright": "Andrew Kelly/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/eisennew/eisennew-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Cohen leaving the federal district court in Manhattan after entering a guilty plea for lying to Congress.",
                "copyright": "Andrew Kelly/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/eisennew/eisennew-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Cohen leaving the federal district court in Manhattan after entering a guilty plea for lying to Congress.",
                "copyright": "Andrew Kelly/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/opinion/eisennew/eisennew-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1366,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Cohen leaving the federal district court in Manhattan after entering a guilty plea for lying to Congress.",
                "copyright": "Andrew Kelly/Reuters"
              }
            ],
            "short_url": "https://nyti.ms/2DRNM8j"
          },
          {
            "section": "Opinion",
            "subsection": "",
            "title": "Occupy Hungary",
            "abstract": "Students have one day left to save Central European University from being driven out of the country.",
            "url": "https://www.nytimes.com/2018/11/29/opinion/hungary-central-european-university-george-soros.html",
            "byline": "By ROSA SCHWARTZBURG",
            "item_type": "Article",
            "updated_date": "2018-11-29T20:24:58-05:00",
            "created_date": "2018-11-29T19:04:56-05:00",
            "published_date": "2018-11-29T19:04:56-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Colleges and Universities"
            ],
            "org_facet": [],
            "per_facet": [
              "Orban, Viktor",
              "Soros, George"
            ],
            "geo_facet": [
              "Budapest (Hungary)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30SCHWARTZBURG/merlin_147261540_c4e2bf96-fc93-4303-bab7-d6150fc7860b-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "A rally in support of Central European University in Kossuth Square, in front of Parliament, in Budapest on Saturday.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30SCHWARTZBURG/merlin_147261540_c4e2bf96-fc93-4303-bab7-d6150fc7860b-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "A rally in support of Central European University in Kossuth Square, in front of Parliament, in Budapest on Saturday.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30SCHWARTZBURG/merlin_147261540_c4e2bf96-fc93-4303-bab7-d6150fc7860b-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "A rally in support of Central European University in Kossuth Square, in front of Parliament, in Budapest on Saturday.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30SCHWARTZBURG/merlin_147261540_c4e2bf96-fc93-4303-bab7-d6150fc7860b-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "A rally in support of Central European University in Kossuth Square, in front of Parliament, in Budapest on Saturday.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/opinion/30SCHWARTZBURG/merlin_147261540_c4e2bf96-fc93-4303-bab7-d6150fc7860b-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1373,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "A rally in support of Central European University in Kossuth Square, in front of Parliament, in Budapest on Saturday.",
                "copyright": "Bernadett Szabo/Reuters"
              }
            ],
            "short_url": "https://nyti.ms/2zyqama"
          },
          {
            "section": "World",
            "subsection": "Middle East",
            "title": "In Yemen, Lavish Meals for Few, Starvation for Many and a Dilemma for Reporters",
            "abstract": "In embattled Yemen, the contrasts are stark as desperate beggars congregate outside markets filled with goods for anyone who can afford them. Should a journalist put down his notebook and help?",
            "url": "https://www.nytimes.com/2018/11/29/world/middleeast/yemen-saudi-arabia-famine.html",
            "byline": "By DECLAN WALSH",
            "item_type": "Article",
            "updated_date": "2018-11-29T18:32:29-05:00",
            "created_date": "2018-11-29T11:27:13-05:00",
            "published_date": "2018-11-29T11:27:13-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Civilian Casualties",
              "Malnutrition",
              "Humanitarian Aid",
              "Hospitals"
            ],
            "org_facet": [
              "Doctors Without Borders",
              "Houthis"
            ],
            "per_facet": [],
            "geo_facet": [
              "Yemen"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30yemen-dispatch-P1/yemen-dispatch7-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "A woman in the poor mountain village of Al Juberia, Yemen.",
                "copyright": "Tyler Hicks/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30yemen-dispatch-P1/yemen-dispatch7-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "A woman in the poor mountain village of Al Juberia, Yemen.",
                "copyright": "Tyler Hicks/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30yemen-dispatch-P1/merlin_145627944_da18ef19-f217-45a4-91d4-6589004d293d-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "A woman in the poor mountain village of Al Juberia, Yemen.",
                "copyright": "Tyler Hicks/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30yemen-dispatch-P1/30yemen-dispatch-P1-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "A woman in the poor mountain village of Al Juberia, Yemen.",
                "copyright": "Tyler Hicks/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30yemen-dispatch-P1/merlin_145627944_da18ef19-f217-45a4-91d4-6589004d293d-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "A woman in the poor mountain village of Al Juberia, Yemen.",
                "copyright": "Tyler Hicks/The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2ztWuGM"
          },
          {
            "section": "Real Estate",
            "subsection": "",
            "title": "Climate Change Insurance: Buy Land Somewhere Else",
            "abstract": "In case global warming makes their homes uninhabitable, some millennials have a Plan B: investing in places like the Catskills, Oregon and Vermont.",
            "url": "https://www.nytimes.com/2018/11/30/realestate/climate-change-insurance-buy-land-somewhere-else.html",
            "byline": "By ALYSON KRUEGER",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:13-05:00",
            "created_date": "2018-11-30T05:00:12-05:00",
            "published_date": "2018-11-30T05:00:12-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Real Estate and Housing (Residential)",
              "Global Warming"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [
              "Catskill Mountains",
              "Montana",
              "Oregon"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/02/realestate/02Climate_Illo/02Climate_Illo-thumbStandard-v2.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Janne Iivonen"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/realestate/02Climate_Illo/02Climate_Illo-thumbLarge-v2.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Janne Iivonen"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/realestate/02Climate_Illo/merlin_147479736_de2352a1-2f1a-426d-8436-946c5212380b-articleInline.jpg",
                "format": "Normal",
                "height": 196,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Janne Iivonen"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/realestate/02Climate_Illo/02Climate_Illo-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Janne Iivonen"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/realestate/02Climate_Illo/merlin_147479736_de2352a1-2f1a-426d-8436-946c5212380b-superJumbo.jpg",
                "format": "superJumbo",
                "height": 2048,
                "width": 1988,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Janne Iivonen"
              }
            ],
            "short_url": "https://nyti.ms/2zzGaUX"
          },
          {
            "section": "Style",
            "subsection": "",
            "title": "Marooned on ‘Love Island’",
            "abstract": "When a medical crisis asks a young woman to confront the messier aspects of love, she plunges into a reality TV version of romance.",
            "url": "https://www.nytimes.com/2018/11/30/style/modern-love-marooned-on-love-island.html",
            "byline": "By SOPHIE MACKINTOSH",
            "item_type": "Article",
            "updated_date": "2018-11-30T00:00:01-05:00",
            "created_date": "2018-11-30T00:00:01-05:00",
            "published_date": "2018-11-30T00:00:01-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Love (Emotion)",
              "Summer (Season)",
              "Dating and Relationships",
              "Hospitals",
              "Reality Television",
              "Colonoscopy"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [
              "London (England)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/02/style/02MODERNLOVE/02MODERNLOVE-thumbStandard-v2.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Brian Rea"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/style/02MODERNLOVE/02MODERNLOVE-thumbLarge-v2.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Brian Rea"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/style/02MODERNLOVE/02MODERNLOVE-articleInline.jpg",
                "format": "Normal",
                "height": 120,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Brian Rea"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/style/02MODERNLOVE/02MODERNLOVE-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Brian Rea"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/style/02MODERNLOVE/02MODERNLOVE-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1296,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Brian Rea"
              }
            ],
            "short_url": "https://nyti.ms/2zxNxfv"
          },
          {
            "section": "U.S.",
            "subsection": "Politics",
            "title": "How Michael Bloomberg Used His Money to Aid Democratic Victories in the House",
            "abstract": "Democrats backed by Mr. Bloomberg’s organization won 21 of 24 House races, making him among the most influential donors of the election cycle.",
            "url": "https://www.nytimes.com/2018/11/30/us/politics/michael-bloomberg-democrats-donate.html",
            "byline": "By STEPHANIE SAUL and RACHEL SHOREY",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:13-05:00",
            "created_date": "2018-11-30T05:00:13-05:00",
            "published_date": "2018-11-30T05:00:13-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Campaign Finance",
              "Midterm Elections (2018)",
              "Political Advertising"
            ],
            "org_facet": [
              "Democratic Party",
              "Federal Election Commission",
              "House of Representatives",
              "Bloomberg Philanthropies"
            ],
            "per_facet": [
              "Bloomberg, Michael R",
              "Howard Wolfson"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/01/us/politics/01bloomberg1/01bloomberg1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Bloomberg, the former New York City mayor, was the biggest outside spender aiding Democratic House candidates.",
                "copyright": "Cheryl Senter/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/us/politics/01bloomberg1/01bloomberg1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Bloomberg, the former New York City mayor, was the biggest outside spender aiding Democratic House candidates.",
                "copyright": "Cheryl Senter/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/us/politics/01bloomberg1/merlin_145250514_b808381d-e2ee-49d1-9a14-6eaf56e86c81-articleInline.jpg",
                "format": "Normal",
                "height": 125,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Bloomberg, the former New York City mayor, was the biggest outside spender aiding Democratic House candidates.",
                "copyright": "Cheryl Senter/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/us/politics/01bloomberg1/01bloomberg1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Bloomberg, the former New York City mayor, was the biggest outside spender aiding Democratic House candidates.",
                "copyright": "Cheryl Senter/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/01/us/politics/01bloomberg1/merlin_145250514_b808381d-e2ee-49d1-9a14-6eaf56e86c81-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1349,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Michael Bloomberg, the former New York City mayor, was the biggest outside spender aiding Democratic House candidates.",
                "copyright": "Cheryl Senter/Associated Press"
              }
            ],
            "short_url": "https://nyti.ms/2zy5TNz"
          },
          {
            "section": "U.S.",
            "subsection": "",
            "title": "St. Louis Police Officers Charged With Beating Undercover Detective at 2017 Protest",
            "abstract": "Prosecutors said three officers threw a colleague to the ground, then hit and kicked him, believing he was a protester.",
            "url": "https://www.nytimes.com/2018/11/29/us/st-louis-police-indicted-protest.html",
            "byline": "By JULIA JACOBS",
            "item_type": "Article",
            "updated_date": "2018-11-29T21:12:23-05:00",
            "created_date": "2018-11-29T21:12:23-05:00",
            "published_date": "2018-11-29T21:12:23-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Police Brutality, Misconduct and Shootings",
              "Demonstrations, Protests and Riots"
            ],
            "org_facet": [],
            "per_facet": [
              "Smith, Anthony Lamar (d 2011)",
              "Stockley, Jason (1980- )"
            ],
            "geo_facet": [
              "St Louis (Mo)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30xp-stlouis/30xp-stlouis-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Police officers line up at a protest in response to the 2017 acquittal of Jason Stockley. Three St. Louis officers were charged on Thursday with beating up an undercover colleague at one of the protests.",
                "copyright": "Whitney Curtis/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30xp-stlouis/30xp-stlouis-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Police officers line up at a protest in response to the 2017 acquittal of Jason Stockley. Three St. Louis officers were charged on Thursday with beating up an undercover colleague at one of the protests.",
                "copyright": "Whitney Curtis/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30xp-stlouis/30xp-stlouis-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Police officers line up at a protest in response to the 2017 acquittal of Jason Stockley. Three St. Louis officers were charged on Thursday with beating up an undercover colleague at one of the protests.",
                "copyright": "Whitney Curtis/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30xp-stlouis/30xp-stlouis-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Police officers line up at a protest in response to the 2017 acquittal of Jason Stockley. Three St. Louis officers were charged on Thursday with beating up an undercover colleague at one of the protests.",
                "copyright": "Whitney Curtis/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30xp-stlouis/30xp-stlouis-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1366,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Police officers line up at a protest in response to the 2017 acquittal of Jason Stockley. Three St. Louis officers were charged on Thursday with beating up an undercover colleague at one of the protests.",
                "copyright": "Whitney Curtis/Reuters"
              }
            ],
            "short_url": "https://nyti.ms/2zwGaVU"
          },
          {
            "section": "U.S.",
            "subsection": "",
            "title": "Border Drug Cases Hit 20-Year Low as Prosecutors Focused on Migrants",
            "abstract": "The decline, most severe in California and Arizona, reversed after the Trump administration dispatched more lawyers to the border.",
            "url": "https://www.nytimes.com/2018/11/30/us/drugs-border-migrants-zero-tolerance.html",
            "byline": "By RICHARD A. OPPEL Jr.",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:12-05:00",
            "created_date": "2018-11-30T05:00:12-05:00",
            "published_date": "2018-11-30T05:00:12-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Illegal Immigration",
              "Drug Abuse and Traffic",
              "Border Barriers"
            ],
            "org_facet": [
              "Justice Department"
            ],
            "per_facet": [
              "Trump, Donald J"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/21/us/00drugcrimes/00drugcrimes-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "A United States border patrol officer amid drivers waiting on the Mexico-U.S. border crossing.",
                "copyright": "Marco Ugarte/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/21/us/00drugcrimes/00drugcrimes-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "A United States border patrol officer amid drivers waiting on the Mexico-U.S. border crossing.",
                "copyright": "Marco Ugarte/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/21/us/00drugcrimes/merlin_147084105_ea3c8d05-860e-41ed-b181-c2fd2c1b5b3c-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "A United States border patrol officer amid drivers waiting on the Mexico-U.S. border crossing.",
                "copyright": "Marco Ugarte/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/21/us/00drugcrimes/merlin_147084105_ea3c8d05-860e-41ed-b181-c2fd2c1b5b3c-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "A United States border patrol officer amid drivers waiting on the Mexico-U.S. border crossing.",
                "copyright": "Marco Ugarte/Associated Press"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/21/us/00drugcrimes/merlin_147084105_ea3c8d05-860e-41ed-b181-c2fd2c1b5b3c-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "A United States border patrol officer amid drivers waiting on the Mexico-U.S. border crossing.",
                "copyright": "Marco Ugarte/Associated Press"
              }
            ],
            "short_url": "https://nyti.ms/2zwUAVQ"
          },
          {
            "section": "New York",
            "subsection": "",
            "title": "The Emails That Mayor de Blasio May Not Have Wanted Anyone to See",
            "abstract": "City Hall was to have released all emails between Mayor Bill de Blasio and a disgraced donor, but new ones emerged during a federal trial this week.",
            "url": "https://www.nytimes.com/2018/11/29/nyregion/emails-bill-de-blasio-rechnitz-donors.html",
            "byline": "By J. DAVID GOODMAN",
            "item_type": "Article",
            "updated_date": "2018-11-29T23:47:21-05:00",
            "created_date": "2018-11-29T18:38:00-05:00",
            "published_date": "2018-11-29T18:38:00-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "E-Mail",
              "Corruption (Institutional)",
              "Bribery and Kickbacks"
            ],
            "org_facet": [
              "Police Department (NYC)"
            ],
            "per_facet": [
              "Rechnitz, Jona S",
              "de Blasio, Bill",
              "Reichberg, Jeremy (1974- )",
              "Grant, James M (1973- )"
            ],
            "geo_facet": [
              "Manhattan (NYC)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30bdbemails01/30bdbemails01-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Mayor Bill de Blasio was to have released all emails between himself and a disgraced donor, but new ones emerged during a federal trial this week.",
                "copyright": "Dave Sanders for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30bdbemails01/30bdbemails01-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Mayor Bill de Blasio was to have released all emails between himself and a disgraced donor, but new ones emerged during a federal trial this week.",
                "copyright": "Dave Sanders for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30bdbemails01/merlin_134784987_babe7075-ef70-458b-82ab-d8032006b1a5-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Mayor Bill de Blasio was to have released all emails between himself and a disgraced donor, but new ones emerged during a federal trial this week.",
                "copyright": "Dave Sanders for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30bdbemails01/merlin_134784987_babe7075-ef70-458b-82ab-d8032006b1a5-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Mayor Bill de Blasio was to have released all emails between himself and a disgraced donor, but new ones emerged during a federal trial this week.",
                "copyright": "Dave Sanders for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/nyregion/30bdbemails01/merlin_134784987_babe7075-ef70-458b-82ab-d8032006b1a5-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Mayor Bill de Blasio was to have released all emails between himself and a disgraced donor, but new ones emerged during a federal trial this week.",
                "copyright": "Dave Sanders for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zxw32Z"
          },
          {
            "section": "World",
            "subsection": "Europe",
            "title": "Orban and His Allies Cement Control of Hungary’s News Media",
            "abstract": "Hundreds of private outlets were simultaneously donated by their owners to a holding company run by allies of Hungary’s far-right prime minister.",
            "url": "https://www.nytimes.com/2018/11/29/world/europe/hungary-orban-media.html",
            "byline": "By PATRICK KINGSLEY",
            "item_type": "Article",
            "updated_date": "2018-11-29T23:59:59-05:00",
            "created_date": "2018-11-29T14:11:21-05:00",
            "published_date": "2018-11-29T14:11:21-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Freedom of the Press",
              "News and News Media",
              "Politics and Government"
            ],
            "org_facet": [
              "European Union"
            ],
            "per_facet": [
              "Orban, Viktor"
            ],
            "geo_facet": [
              "Hungary"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30hungary1/merlin_145717992_4d7a72b8-82ac-440d-84a2-db56bfe25daa-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Prime Minister Viktor Orban’s government has starved Hungary’s independent media outlets of state advertising revenues and squeezed their owners’ other business interests.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30hungary1/merlin_145717992_4d7a72b8-82ac-440d-84a2-db56bfe25daa-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Prime Minister Viktor Orban’s government has starved Hungary’s independent media outlets of state advertising revenues and squeezed their owners’ other business interests.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30hungary1/merlin_145717992_4d7a72b8-82ac-440d-84a2-db56bfe25daa-articleInline.jpg",
                "format": "Normal",
                "height": 144,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Prime Minister Viktor Orban’s government has starved Hungary’s independent media outlets of state advertising revenues and squeezed their owners’ other business interests.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30hungary1/merlin_145717992_4d7a72b8-82ac-440d-84a2-db56bfe25daa-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Prime Minister Viktor Orban’s government has starved Hungary’s independent media outlets of state advertising revenues and squeezed their owners’ other business interests.",
                "copyright": "Bernadett Szabo/Reuters"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30hungary1/merlin_145717992_4d7a72b8-82ac-440d-84a2-db56bfe25daa-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1548,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Prime Minister Viktor Orban’s government has starved Hungary’s independent media outlets of state advertising revenues and squeezed their owners’ other business interests.",
                "copyright": "Bernadett Szabo/Reuters"
              }
            ],
            "short_url": "https://nyti.ms/2zw6q2q"
          },
          {
            "section": "Business",
            "subsection": "",
            "title": "Swastikas, Slurs, and Menial Tasks: Many Black Workers at Tesla Say They Faced Racism",
            "abstract": "African-American workers have reported threats, humiliation and barriers to promotion at the plant. The automaker says there is no pattern of bias.",
            "url": "https://www.nytimes.com/2018/11/30/business/tesla-factory-racism.html",
            "byline": "By LAUREN HEPLER",
            "item_type": "Article",
            "updated_date": "2018-11-30T07:32:16-05:00",
            "created_date": "2018-11-30T05:00:18-05:00",
            "published_date": "2018-11-30T05:00:18-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Blacks",
              "Workplace Hazards and Violations",
              "Labor and Jobs",
              "Discrimination",
              "Factories and Manufacturing",
              "Race and Ethnicity"
            ],
            "org_facet": [
              "Tesla Motors Inc"
            ],
            "per_facet": [
              "Musk, Elon"
            ],
            "geo_facet": [
              "Fremont (Calif)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/16/business/00TESLABIAS-PROMO/00TESLABIAS-PROMO-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Demetric Diaz, left, and his father, Owen, said they had heard racial slurs directed toward them while working at the Tesla factory in Fremont, Calif.",
                "copyright": "Ryan Christopher Jones for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/16/business/00TESLABIAS-PROMO/00TESLABIAS-PROMO-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Demetric Diaz, left, and his father, Owen, said they had heard racial slurs directed toward them while working at the Tesla factory in Fremont, Calif.",
                "copyright": "Ryan Christopher Jones for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/16/business/00TESLABIAS-PROMO/00TESLABIAS-PROMO-articleInline.jpg",
                "format": "Normal",
                "height": 125,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Demetric Diaz, left, and his father, Owen, said they had heard racial slurs directed toward them while working at the Tesla factory in Fremont, Calif.",
                "copyright": "Ryan Christopher Jones for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/16/business/00TESLABIAS-PROMO/00TESLABIAS-PROMO-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Demetric Diaz, left, and his father, Owen, said they had heard racial slurs directed toward them while working at the Tesla factory in Fremont, Calif.",
                "copyright": "Ryan Christopher Jones for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/16/business/00TESLABIAS-PROMO/00TESLABIAS-PROMO-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1364,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Demetric Diaz, left, and his father, Owen, said they had heard racial slurs directed toward them while working at the Tesla factory in Fremont, Calif.",
                "copyright": "Ryan Christopher Jones for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zs83yf"
          },
          {
            "section": "New York",
            "subsection": "",
            "title": "Why New York Lags So Far Behind on Natural Childbirth",
            "abstract": "Texas has 70 free-standing birthing centers; New York has three. In the city, where Mount Sinai West’s birthing center will soon close, money is one big factor.",
            "url": "https://www.nytimes.com/2018/11/30/nyregion/mount-sinai-west-birthing-center-natural-childbirth.html",
            "byline": "By JULIE SATOW",
            "item_type": "Article",
            "updated_date": "2018-11-30T05:00:13-05:00",
            "created_date": "2018-11-30T05:00:13-05:00",
            "published_date": "2018-11-30T05:00:13-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Pregnancy and Childbirth",
              "Midwives and Doulas",
              "Hospitals",
              "Caesarean Section"
            ],
            "org_facet": [
              "Mount Sinai Medical Center",
              "New York-Presbyterian Hospital",
              "New York City Health and Hospitals Corp"
            ],
            "per_facet": [],
            "geo_facet": [
              "New York City"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/02/nyregion/02birth-promo/merlin_147229488_835ca583-4fc8-4db8-a557-48fa61592319-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Gabriela Bhaskar for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/nyregion/02birth-promo/merlin_147229488_835ca583-4fc8-4db8-a557-48fa61592319-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Gabriela Bhaskar for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/nyregion/02birth-promo/merlin_147229488_835ca583-4fc8-4db8-a557-48fa61592319-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Gabriela Bhaskar for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/nyregion/02birth-promo/02birth-promo-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Gabriela Bhaskar for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/02/nyregion/02birth-promo/merlin_147229488_835ca583-4fc8-4db8-a557-48fa61592319-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Gabriela Bhaskar for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zx6Ci7"
          },
          {
            "section": "U.S.",
            "subsection": "",
            "title": "An Alabama Mall Shooting, a Black Man’s Death, and a Debate Over Race and Guns",
            "abstract": "After police in Alabama fatally shot a 21-year-old black man whom they mistook for a suspect, critics have claimed a double standard in enforcing gun rights.",
            "url": "https://www.nytimes.com/2018/11/29/us/alabama-mall-shooting.html",
            "byline": "By JOHN ELIGON",
            "item_type": "Article",
            "updated_date": "2018-11-30T08:37:34-05:00",
            "created_date": "2018-11-29T20:15:31-05:00",
            "published_date": "2018-11-29T20:15:31-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Police Brutality, Misconduct and Shootings",
              "Blacks",
              "Discrimination",
              "Firearms",
              "Murders, Attempted Murders and Homicides",
              "Shopping Centers and Malls"
            ],
            "org_facet": [],
            "per_facet": [
              "Bradford, Emantic Fitzgerald Jr",
              "Brown, Erron Martez Dequan"
            ],
            "geo_facet": [
              "Hoover (Ala)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30alabama-02-print/00alabama-02-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Mr. Bradford received a general discharge from the Army in August, after an injury during basic training.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30alabama-02-print/00alabama-02-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Mr. Bradford received a general discharge from the Army in August, after an injury during basic training.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30alabama-02-print/00alabama-02-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Mr. Bradford received a general discharge from the Army in August, after an injury during basic training.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30alabama-02-print/00alabama-02-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Mr. Bradford received a general discharge from the Army in August, after an injury during basic training.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/us/30alabama-02-print/merlin_147274770_dd98a80b-abe1-44e5-b62c-35067ef07e1c-superJumbo.jpg",
                "format": "superJumbo",
                "height": 2048,
                "width": 1531,
                "type": "image",
                "subtype": "photo",
                "caption": "Mr. Bradford received a general discharge from the Army in August, after an injury during basic training.",
                "copyright": ""
              }
            ],
            "short_url": "https://nyti.ms/2DRKnX1"
          },
          {
            "section": "World",
            "subsection": "Europe",
            "title": "5 Weeks and Counting: Dutch Church Holds Worship Marathon to Protect Migrant Family",
            "abstract": "Bethel Church in The Hague is taking advantage of a law that forbids the police from entering a place while a religious service is being held. Help has poured in.",
            "url": "https://www.nytimes.com/2018/11/29/world/europe/bethel-church-netherlands-deportation.html",
            "byline": "By RICHARD PÉREZ-PEÑA",
            "item_type": "Article",
            "updated_date": "2018-11-29T12:20:06-05:00",
            "created_date": "2018-11-29T12:20:06-05:00",
            "published_date": "2018-11-29T12:20:06-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Asylum, Right of",
              "Deportation",
              "Politics and Government",
              "Decisions and Verdicts",
              "Refugees and Displaced Persons"
            ],
            "org_facet": [
              "Bethel Church"
            ],
            "per_facet": [],
            "geo_facet": [
              "Netherlands",
              "Hague (Netherlands)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30church-print/30church-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Bethel Church in The Hague has taken dramatic steps to protect an Armenian family that was denied asylum in the Netherlands.",
                "copyright": "Axel Wicke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30church-print/30church-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Bethel Church in The Hague has taken dramatic steps to protect an Armenian family that was denied asylum in the Netherlands.",
                "copyright": "Axel Wicke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30church-print/30church-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Bethel Church in The Hague has taken dramatic steps to protect an Armenian family that was denied asylum in the Netherlands.",
                "copyright": "Axel Wicke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30church-print/30church-print-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Bethel Church in The Hague has taken dramatic steps to protect an Armenian family that was denied asylum in the Netherlands.",
                "copyright": "Axel Wicke"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/world/30church-print/30church-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1024,
                "width": 1536,
                "type": "image",
                "subtype": "photo",
                "caption": "Bethel Church in The Hague has taken dramatic steps to protect an Armenian family that was denied asylum in the Netherlands.",
                "copyright": "Axel Wicke"
              }
            ],
            "short_url": "https://nyti.ms/2zyzsP1"
          },
          {
            "section": "Smarter Living",
            "subsection": "",
            "title": "Less Barf, More Bleach: How to Prevent Nasty Stomach Bugs This Winter",
            "abstract": "It can survive on surfaces for days, is tricky to kill, and is the source of most stomach bugs in America. It’s norovirus, and we’re headed into prime season. Here’s how to beat it.",
            "url": "https://www.nytimes.com/2018/11/29/smarter-living/norovirus-prevention-stomach-flu-winter.html",
            "byline": "By MELINDA WENNER MOYER",
            "item_type": "Article",
            "updated_date": "2018-11-29T19:44:52-05:00",
            "created_date": "2018-11-29T19:44:52-05:00",
            "published_date": "2018-11-29T19:44:52-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Norovirus",
              "Hygiene and Cleanliness",
              "Viruses"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/24/smarter-living/00sl-norovirus1/00sl-norovirus1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Marlene Ford/Getty Images"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/24/smarter-living/00sl-norovirus1/00sl-norovirus1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Marlene Ford/Getty Images"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/24/smarter-living/00sl-norovirus1/00sl-norovirus1-articleInline.jpg",
                "format": "Normal",
                "height": 126,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Marlene Ford/Getty Images"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/24/smarter-living/00sl-norovirus1/00sl-norovirus1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Marlene Ford/Getty Images"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/24/smarter-living/00sl-norovirus1/00sl-norovirus1-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1362,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Marlene Ford/Getty Images"
              }
            ],
            "short_url": "https://nyti.ms/2DSH4Pb"
          },
          {
            "section": "Smarter Living",
            "subsection": "",
            "title": "What I Learned From Tracking My Spending for a Month",
            "abstract": "Everyone knows to watch their spending: A mistake can mean the difference between making or bouncing the rent check. I tracked my spending meticulously for a month. Here’s what I learned.",
            "url": "https://www.nytimes.com/2018/11/28/smarter-living/budget-money-lessons.html",
            "byline": "By KRISTIN WONG",
            "item_type": "Article",
            "updated_date": "2018-11-28T16:52:07-05:00",
            "created_date": "2018-11-28T16:52:06-05:00",
            "published_date": "2018-11-28T16:52:06-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Budgets and Budgeting",
              "Personal Finances",
              "Savings"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/26/smarter-living/26sl-budgetmonth/15sl-budgetmonth-thumbStandard-v3.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Antonio de Luca"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/26/smarter-living/26sl-budgetmonth/15sl-budgetmonth-thumbLarge-v3.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Antonio de Luca"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/26/smarter-living/26sl-budgetmonth/15sl-budgetmonth-articleInline-v2.jpg",
                "format": "Normal",
                "height": 153,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Antonio de Luca"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/26/smarter-living/26sl-budgetmonth/15sl-budgetmonth-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Antonio de Luca"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/26/smarter-living/26sl-budgetmonth/15sl-budgetmonth-superJumbo-v2.jpg",
                "format": "superJumbo",
                "height": 1457,
                "width": 1806,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Antonio de Luca"
              }
            ],
            "short_url": "https://nyti.ms/2DP9XMg"
          },
          {
            "section": "Food",
            "subsection": "Wine, Beer & Cocktails",
            "title": "The Best Wine Books of 2018",
            "abstract": "These five new volumes investigate some of the most basic issues raised by wine, while posing new questions and inspiring thirst.",
            "url": "https://www.nytimes.com/2018/11/29/dining/drinks/best-wine-books.html",
            "byline": "By ERIC ASIMOV",
            "item_type": "Article",
            "updated_date": "2018-11-29T11:28:12-05:00",
            "created_date": "2018-11-29T11:28:12-05:00",
            "published_date": "2018-11-29T11:28:12-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Wines",
              "Books and Literature",
              "Grapes",
              "The Sommelier's Atlas of Taste (Book)",
              "What Makes a Wine Worth Drinking (Book)",
              "Amber Revolution (Book)",
              "Godforsaken Grapes (Book)",
              "Flawless: Understanding Faults in Wine (Book)"
            ],
            "org_facet": [],
            "per_facet": [
              "Parr, Rajat",
              "Mackay, Jordan",
              "Theise, Terry",
              "Woolf, Simon J.",
              "Wilson, Jason",
              "Goode, Jamie"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/05/dining/05pour2/05pour2-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Tony Cenicola/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/05/dining/05pour2/05pour2-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Tony Cenicola/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/05/dining/05pour2/merlin_146845236_fc2b6e55-b5d1-454a-846f-39f158471410-articleInline.jpg",
                "format": "Normal",
                "height": 285,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Tony Cenicola/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/05/dining/05pour2/05pour2-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Tony Cenicola/The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/05/dining/05pour2/merlin_146845236_fc2b6e55-b5d1-454a-846f-39f158471410-superJumbo.jpg",
                "format": "superJumbo",
                "height": 2048,
                "width": 1366,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Tony Cenicola/The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2zvAQ52"
          },
          {
            "section": "Technology",
            "subsection": "Personal Tech",
            "title": "Make Your Friends and Family Less Irksome This Holiday Season",
            "abstract": "Getting a big group together this time of year can be a hassle. So spare everyone the endless phone notifications and email threads and try these methods instead.",
            "url": "https://www.nytimes.com/2018/11/28/technology/personaltech/holiday-group-gathering-tech.html",
            "byline": "By BRIAN X. CHEN",
            "item_type": "Article",
            "updated_date": "2018-11-28T12:20:35-05:00",
            "created_date": "2018-11-28T12:20:35-05:00",
            "published_date": "2018-11-28T12:20:35-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Mobile Applications",
              "Photography",
              "Text Messaging",
              "Instant Messaging",
              "Computers and the Internet",
              "Android (Operating System)",
              "Videophones and Videoconferencing",
              "iPhone",
              "Holidays and Special Occasions"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29Techfix-illo/29Techfix-illo-thumbStandard.gif",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Glenn Harvey"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29Techfix-illo/merlin_147427290_5d6f9303-173e-4ad2-ae23-888366805261-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Glenn Harvey"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29Techfix-illo/29Techfix-illo-articleInline.gif",
                "format": "Normal",
                "height": 126,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Glenn Harvey"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29Techfix-illo/29Techfix-illo-mediumThreeByTwo210-v2.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Glenn Harvey"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29Techfix-illo/29Techfix-illo-superJumbo.gif",
                "format": "superJumbo",
                "height": 676,
                "width": 1024,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Glenn Harvey"
              }
            ],
            "short_url": "https://nyti.ms/2DQZTT9"
          },
          {
            "section": "Books",
            "subsection": "Book Review",
            "title": "The 10 Best Books of 2018",
            "abstract": "The editors of The Times Book Review choose the best fiction and nonfiction titles this year.",
            "url": "https://www.nytimes.com/2018/11/29/books/review/best-books.html",
            "byline": "",
            "item_type": "Article",
            "updated_date": "2018-11-29T17:40:39-05:00",
            "created_date": "2018-11-29T10:00:08-05:00",
            "published_date": "2018-11-29T10:00:08-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Books and Literature"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/12/09/books/review/1209-BKS-COVER_Sub01/1209-BKS-COVER_Sub01-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Stephen Doyle"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/09/books/review/1209-BKS-COVER_Sub01/1209-BKS-COVER_Sub01-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Stephen Doyle"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/09/books/review/1209-BKS-COVER_Sub01/1209-BKS-COVER_Sub01-articleInline.jpg",
                "format": "Normal",
                "height": 169,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Stephen Doyle"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/09/books/review/1209-BKS-COVER_Sub01/1209-BKS-COVER_Sub01-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Stephen Doyle"
              },
              {
                "url": "https://static01.nyt.com/images/2018/12/09/books/review/1209-BKS-COVER_Sub01/1209-BKS-COVER_Sub01-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1824,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "",
                "copyright": "Stephen Doyle"
              }
            ],
            "short_url": "https://nyti.ms/2ztLNUE"
          },
          {
            "section": "Movies",
            "subsection": "",
            "title": "‘Happy as Lazzaro’ Review: This Modern Fairy Tale Is an Instant Classic",
            "abstract": "A man’s journey from the feudal countryside to the modern city has the urgency of a news bulletin. A.O. Scott calls it one of the year’s best films.",
            "url": "https://www.nytimes.com/2018/11/29/movies/happy-as-lazzaro-review.html",
            "byline": "By A.O. SCOTT",
            "item_type": "Article",
            "updated_date": "2018-11-29T12:12:35-05:00",
            "created_date": "2018-11-29T10:53:44-05:00",
            "published_date": "2018-11-29T10:53:44-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Movies",
              "Happy as Lazzaro (Movie)"
            ],
            "org_facet": [],
            "per_facet": [
              "Rohrwacher, Alice",
              "Tardiolo, Adriano",
              "Rohrwacher, Alba"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30Lazzaro/30Lazzaro-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Adriano Tardiolo stars as the title character in “Happy as Lazzaro,” Alice Rohrwacher’s new movie.",
                "copyright": "Netflix"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30Lazzaro/30Lazzaro-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Adriano Tardiolo stars as the title character in “Happy as Lazzaro,” Alice Rohrwacher’s new movie.",
                "copyright": "Netflix"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30Lazzaro/30Lazzaro-articleInline-v2.jpg",
                "format": "Normal",
                "height": 112,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Adriano Tardiolo stars as the title character in “Happy as Lazzaro,” Alice Rohrwacher’s new movie.",
                "copyright": "Netflix"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30Lazzaro/30Lazzaro-mediumThreeByTwo210-v3.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Adriano Tardiolo stars as the title character in “Happy as Lazzaro,” Alice Rohrwacher’s new movie.",
                "copyright": "Netflix"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30Lazzaro/merlin_147232065_eec5980e-f867-4421-a119-f8fa9fff6562-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1365,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Adriano Tardiolo stars as the title character in “Happy as Lazzaro,” Alice Rohrwacher’s new movie.",
                "copyright": "Netflix"
              }
            ],
            "short_url": "https://nyti.ms/2DSPSob"
          },
          {
            "section": "Arts",
            "subsection": "Television",
            "title": "Jimmy Fallon Says Trump Seems to Be ‘Running Out of Friends’",
            "abstract": "On Thursday, Michael Cohen pleaded guilty to lying to Congress about President Trump’s business dealings. Jimmy Fallon and other hosts celebrated the news.",
            "url": "https://www.nytimes.com/2018/11/30/arts/television/jimmy-fallon-trump-michael-cohen.html",
            "byline": "By GIOVANNI RUSSONELLO",
            "item_type": "Article",
            "updated_date": "2018-11-30T04:40:23-05:00",
            "created_date": "2018-11-30T04:40:23-05:00",
            "published_date": "2018-11-30T04:40:23-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "The Daily Show with Trevor Noah (TV Program)",
              "The Tonight Show (TV Program)",
              "Late Show with Stephen Colbert (TV Program)"
            ],
            "org_facet": [],
            "per_facet": [
              "Colbert, Stephen",
              "Fallon, Jimmy",
              "Manafort, Paul J",
              "Noah, Trevor (1984- )",
              "Trump, Donald J",
              "Mueller, Robert S III"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30latenight1/30latenight1-thumbStandard.png",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Jimmy Fallon poked fun at President Trump: “Last night, Trump flipped on the Christmas tree lights, and today, Michael Cohen flipped on Trump.”",
                "copyright": "NBC"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30latenight1/30latenight1-thumbLarge.png",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Jimmy Fallon poked fun at President Trump: “Last night, Trump flipped on the Christmas tree lights, and today, Michael Cohen flipped on Trump.”",
                "copyright": "NBC"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30latenight1/30latenight1-articleInline.png",
                "format": "Normal",
                "height": 98,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Jimmy Fallon poked fun at President Trump: “Last night, Trump flipped on the Christmas tree lights, and today, Michael Cohen flipped on Trump.”",
                "copyright": "NBC"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30latenight1/30latenight1-mediumThreeByTwo210.png",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Jimmy Fallon poked fun at President Trump: “Last night, Trump flipped on the Christmas tree lights, and today, Michael Cohen flipped on Trump.”",
                "copyright": "NBC"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/30/arts/30latenight1/30latenight1-superJumbo.png",
                "format": "superJumbo",
                "height": 1061,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Jimmy Fallon poked fun at President Trump: “Last night, Trump flipped on the Christmas tree lights, and today, Michael Cohen flipped on Trump.”",
                "copyright": "NBC"
              }
            ],
            "short_url": "https://nyti.ms/2zs71lR"
          },
          {
            "section": "T Magazine",
            "subsection": "",
            "title": "It Took 800 Hours to Make This Chanel Dress",
            "abstract": "Capturing one incredible piece in the middle of its creation. This month: a silk tulle sheath.",
            "url": "https://www.nytimes.com/2018/11/29/t-magazine/chanel-couture-dress-how-its-made.html",
            "byline": "By NANCY HASS",
            "item_type": "Article",
            "updated_date": "2018-11-29T11:06:11-05:00",
            "created_date": "2018-11-29T11:06:11-05:00",
            "published_date": "2018-11-29T11:06:11-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Fashion and Apparel",
              "Dresses",
              "Couture (Fashion)"
            ],
            "org_facet": [
              "Chanel SA"
            ],
            "per_facet": [
              "Lagerfeld, Karl"
            ],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/23/t-magazine/23tmag-chanel-slide-MZTC/23tmag-chanel-slide-MZTC-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "At one of Chanel’s haute couture ateliers in Paris, a seamstress sews a temporary trim motif for the client’s second fitting.",
                "copyright": "Marion Berrin"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/23/t-magazine/23tmag-chanel-slide-MZTC/23tmag-chanel-slide-MZTC-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "At one of Chanel’s haute couture ateliers in Paris, a seamstress sews a temporary trim motif for the client’s second fitting.",
                "copyright": "Marion Berrin"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/23/t-magazine/23tmag-chanel-slide-MZTC/23tmag-chanel-slide-MZTC-articleInline.jpg",
                "format": "Normal",
                "height": 238,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "At one of Chanel’s haute couture ateliers in Paris, a seamstress sews a temporary trim motif for the client’s second fitting.",
                "copyright": "Marion Berrin"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/23/t-magazine/23tmag-chanel-slide-MZTC/23tmag-chanel-slide-MZTC-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "At one of Chanel’s haute couture ateliers in Paris, a seamstress sews a temporary trim motif for the client’s second fitting.",
                "copyright": "Marion Berrin"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/23/t-magazine/23tmag-chanel-slide-MZTC/23tmag-chanel-slide-MZTC-superJumbo.jpg",
                "format": "superJumbo",
                "height": 2048,
                "width": 1637,
                "type": "image",
                "subtype": "photo",
                "caption": "At one of Chanel’s haute couture ateliers in Paris, a seamstress sews a temporary trim motif for the client’s second fitting.",
                "copyright": "Marion Berrin"
              }
            ],
            "short_url": "https://nyti.ms/2zqX6Np"
          },
          {
            "section": "Travel",
            "subsection": "",
            "title": "Is Geotagging on Instagram Ruining Natural Wonders? Some Say Yes",
            "abstract": "Conservation groups and others are asking social media users not to add precise location tags to photos of fragile ecosystems and wild animals.",
            "url": "https://www.nytimes.com/2018/11/29/travel/instagram-geotagging-environment.html",
            "byline": "By LAURA M. HOLSON",
            "item_type": "Article",
            "updated_date": "2018-11-29T15:30:01-05:00",
            "created_date": "2018-11-29T12:28:03-05:00",
            "published_date": "2018-11-29T12:28:03-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Social Media",
              "Photography",
              "Travel and Vacations",
              "Poaching (Wildlife)"
            ],
            "org_facet": [
              "Instagram Inc"
            ],
            "per_facet": [],
            "geo_facet": [
              "Jackson Hole (Wyo)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/22/science/00xp-jackson-delta/00xp-jackson-delta-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Delta Lake in Grand Teton National Park is one of a number of areas where tourism skyrocketed after social media influencers tagged the location on Instagram.",
                "copyright": "RooM the Agency/Alamy"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/22/science/00xp-jackson-delta/00xp-jackson-delta-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Delta Lake in Grand Teton National Park is one of a number of areas where tourism skyrocketed after social media influencers tagged the location on Instagram.",
                "copyright": "RooM the Agency/Alamy"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/22/science/00xp-jackson-delta/merlin_147161709_b02e4892-8d81-4cc1-8c33-d57278d0be4f-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Delta Lake in Grand Teton National Park is one of a number of areas where tourism skyrocketed after social media influencers tagged the location on Instagram.",
                "copyright": "RooM the Agency/Alamy"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/22/science/00xp-jackson-delta/00xp-jackson-delta-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Delta Lake in Grand Teton National Park is one of a number of areas where tourism skyrocketed after social media influencers tagged the location on Instagram.",
                "copyright": "RooM the Agency/Alamy"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/22/science/00xp-jackson-delta/merlin_147161709_b02e4892-8d81-4cc1-8c33-d57278d0be4f-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1367,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Delta Lake in Grand Teton National Park is one of a number of areas where tourism skyrocketed after social media influencers tagged the location on Instagram.",
                "copyright": "RooM the Agency/Alamy"
              }
            ],
            "short_url": "https://nyti.ms/2DVqQ8j"
          },
          {
            "section": "Health",
            "subsection": "",
            "title": "It Looked Like a Beer Belly. It Turned Out He Had a 77-Pound Tumor.",
            "abstract": "As his stomach grew and the rest of his body got thinner, Hector Hernandez knew something was wrong, but he never suspected it was cancer.",
            "url": "https://www.nytimes.com/2018/11/29/health/77-pound-tumor-beer-belly.html",
            "byline": "By CHRISTINA CARON",
            "item_type": "Article",
            "updated_date": "2018-11-29T10:46:18-05:00",
            "created_date": "2018-11-29T07:26:05-05:00",
            "published_date": "2018-11-29T07:26:05-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Tumors",
              "Surgery and Surgeons",
              "Cancer"
            ],
            "org_facet": [
              "University of Southern California"
            ],
            "per_facet": [
              "Hernandez, Hector (1971- )",
              "Tseng, William W"
            ],
            "geo_facet": [
              "Downey (Calif)"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/health/29xp-tumor/29xp-tumor-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "At left, Hector Hernandez in July, a few days before the operation that removed a 77-pound tumor from his abdomen, and at right, a couple of weeks after the surgery.",
                "copyright": "Hector Hernandez"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/health/29xp-tumor/29xp-tumor-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "At left, Hector Hernandez in July, a few days before the operation that removed a 77-pound tumor from his abdomen, and at right, a couple of weeks after the surgery.",
                "copyright": "Hector Hernandez"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/health/29xp-tumor/29xp-tumor-articleInline.jpg",
                "format": "Normal",
                "height": 116,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "At left, Hector Hernandez in July, a few days before the operation that removed a 77-pound tumor from his abdomen, and at right, a couple of weeks after the surgery.",
                "copyright": "Hector Hernandez"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/health/29xp-tumor/29xp-tumor-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "At left, Hector Hernandez in July, a few days before the operation that removed a 77-pound tumor from his abdomen, and at right, a couple of weeks after the surgery.",
                "copyright": "Hector Hernandez"
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/health/29xp-tumor/29xp-tumor-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1210,
                "width": 1977,
                "type": "image",
                "subtype": "photo",
                "caption": "At left, Hector Hernandez in July, a few days before the operation that removed a 77-pound tumor from his abdomen, and at right, a couple of weeks after the surgery.",
                "copyright": "Hector Hernandez"
              }
            ],
            "short_url": "https://nyti.ms/2zFRbEr"
          },
          {
            "section": "Technology",
            "subsection": "",
            "title": "That Virus Alert on Your Computer? Scammers in India May Be Behind It",
            "abstract": "The police outside New Delhi raided fake tech-support centers that sent false warnings to Americans and Canadians and then charged to “fix” the nonexistent infection.",
            "url": "https://www.nytimes.com/2018/11/28/technology/scams-india-call-center-raids.html",
            "byline": "By VINDU GOEL and SUHASINI RAJ",
            "item_type": "Article",
            "updated_date": "2018-11-28T16:01:36-05:00",
            "created_date": "2018-11-28T16:01:36-05:00",
            "published_date": "2018-11-28T16:01:36-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Computer Security",
              "Frauds and Swindling"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [
              "India"
            ],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29CALLSCAM01/29CALLSCAM01-thumbStandard-v3.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "A fake pop-up notice warning that a virus has infected a computer.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29CALLSCAM01/29CALLSCAM01-thumbLarge-v3.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "A fake pop-up notice warning that a virus has infected a computer.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29CALLSCAM01/29CALLSCAM01-articleInline-v2.jpg",
                "format": "Normal",
                "height": 120,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "A fake pop-up notice warning that a virus has infected a computer.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29CALLSCAM01/29CALLSCAM01-mediumThreeByTwo210-v3.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "A fake pop-up notice warning that a virus has infected a computer.",
                "copyright": ""
              },
              {
                "url": "https://static01.nyt.com/images/2018/11/29/business/29CALLSCAM01/29CALLSCAM01-superJumbo-v2.jpg",
                "format": "superJumbo",
                "height": 1091,
                "width": 1726,
                "type": "image",
                "subtype": "photo",
                "caption": "A fake pop-up notice warning that a virus has infected a computer.",
                "copyright": ""
              }
            ],
            "short_url": "https://nyti.ms/2zwyva2"
          },
          {
            "section": "Well",
            "subsection": "Eat",
            "title": "To Treat Eating Disorders, It Sometimes Takes Two",
            "abstract": "Romantic partners of someone with an eating disorder often want to help, but simply don’t know how.",
            "url": "https://www.nytimes.com/2018/11/29/well/eat/eating-disorders-food-anorexia-bulimia-binge-partners-spouses-treatment.html",
            "byline": "By ABBY ELLIN",
            "item_type": "Article",
            "updated_date": "2018-11-29T05:02:04-05:00",
            "created_date": "2018-11-29T05:02:04-05:00",
            "published_date": "2018-11-29T05:02:04-05:00",
            "material_type_facet": "",
            "kicker": "",
            "des_facet": [
              "Eating Disorders",
              "Anorexia Nervosa",
              "Mental Health and Disorders",
              "Bulimia",
              "Weight",
              "Anxiety and Stress",
              "Therapy and Rehabilitation",
              "Psychology and Psychologists",
              "Dating and Relationships",
              "Food",
              "Diet and Nutrition"
            ],
            "org_facet": [],
            "per_facet": [],
            "geo_facet": [],
            "multimedia": [
              {
                "url": "https://static01.nyt.com/images/2018/10/26/well/00WELL-EATINGPARTNERS1/00WELL-EATINGPARTNERS1-thumbStandard.jpg",
                "format": "Standard Thumbnail",
                "height": 75,
                "width": 75,
                "type": "image",
                "subtype": "photo",
                "caption": "Lauren and Brandon Hill prepare a lasagna dinner in their Wilmington, N.C., home; the couple now have a child, something they never could have imagined before Ms. Hill was treated for an eating disorder.",
                "copyright": "Eamon Queeney for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/10/26/well/00WELL-EATINGPARTNERS1/00WELL-EATINGPARTNERS1-thumbLarge.jpg",
                "format": "thumbLarge",
                "height": 150,
                "width": 150,
                "type": "image",
                "subtype": "photo",
                "caption": "Lauren and Brandon Hill prepare a lasagna dinner in their Wilmington, N.C., home; the couple now have a child, something they never could have imagined before Ms. Hill was treated for an eating disorder.",
                "copyright": "Eamon Queeney for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/10/26/well/00WELL-EATINGPARTNERS1/00WELL-EATINGPARTNERS1-articleInline.jpg",
                "format": "Normal",
                "height": 127,
                "width": 190,
                "type": "image",
                "subtype": "photo",
                "caption": "Lauren and Brandon Hill prepare a lasagna dinner in their Wilmington, N.C., home; the couple now have a child, something they never could have imagined before Ms. Hill was treated for an eating disorder.",
                "copyright": "Eamon Queeney for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/10/26/well/00WELL-EATINGPARTNERS1/00WELL-EATINGPARTNERS1-mediumThreeByTwo210.jpg",
                "format": "mediumThreeByTwo210",
                "height": 140,
                "width": 210,
                "type": "image",
                "subtype": "photo",
                "caption": "Lauren and Brandon Hill prepare a lasagna dinner in their Wilmington, N.C., home; the couple now have a child, something they never could have imagined before Ms. Hill was treated for an eating disorder.",
                "copyright": "Eamon Queeney for The New York Times"
              },
              {
                "url": "https://static01.nyt.com/images/2018/10/26/well/00WELL-EATINGPARTNERS1/00WELL-EATINGPARTNERS1-superJumbo.jpg",
                "format": "superJumbo",
                "height": 1366,
                "width": 2048,
                "type": "image",
                "subtype": "photo",
                "caption": "Lauren and Brandon Hill prepare a lasagna dinner in their Wilmington, N.C., home; the couple now have a child, something they never could have imagined before Ms. Hill was treated for an eating disorder.",
                "copyright": "Eamon Queeney for The New York Times"
              }
            ],
            "short_url": "https://nyti.ms/2DNGOB0"
          }
        ]
      }

    )
  end
end
