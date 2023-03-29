zones = {
  "rorbol.dk" = {
    email = "fastmail"

    records = {
      "@" = {
        type   = "redirect"
        values = ["https://www.rorbol.dk/"]
      }
      "www" = {
        type   = "cloudfront"
        values = ["dcuznbjtfqlpi.cloudfront.net"]
      }
      "bredevej" = {
        type   = "a"
        values = ["217.61.218.78"]
      }
      "_aeb34124b776fece1cba4fb3fc834a2c" = {
        # rorbol.dk certificate validation in 269154017105 us-east-1
        type   = "cname"
        values = ["_e6b75a09016d0ab4d6774c344e1c9014.bsgbmzkfwj.acm-validations.aws."]
      }
      "_bc71a7aba7f5e5f49b79c4ffb33c664c.www" = {
        # www.rorbol.dk certificate validation in 297561857154 us-east-1
        type   = "cname"
        values = ["_62115a131cab424732ffa4a00a7d7127.bsgbmzkfwj.acm-validations.aws."]
      }
    }
  }

  "rorbol.com" = {
    email = "protonmail"
    records = {
      "@" = {
        type   = "redirect"
        values = ["https://www.rorbol.dk/"]
      }
      "www" = {
        type   = "redirect"
        values = ["https://www.rorbol.dk/"]
      }
      "#" = {
        type   = "txt"
        values = ["protonmail-verification=1dc97bb33d0ef361add97332db3d6479619282e9"]
      }
      "protonmail._domainkey" = {
        type   = "cname"
        values = ["protonmail.domainkey.docojfgcaj7oz7hpd3nehbqlisnfoq2w7ovtulj3qw45nr6kp54ia.domains.proton.ch."]
      }
      "protonmail2._domainkey" = {
        type   = "cname"
        values = ["protonmail2.domainkey.docojfgcaj7oz7hpd3nehbqlisnfoq2w7ovtulj3qw45nr6kp54ia.domains.proton.ch."]
      }
      "protonmail3._domainkey" = {
        type   = "cname"
        values = ["protonmail3.domainkey.docojfgcaj7oz7hpd3nehbqlisnfoq2w7ovtulj3qw45nr6kp54ia.domains.proton.ch."]
      }
    }
  }

  "xn--rrbl-grac.dk"       = { email = "fastmail" /* webredirect = "https://www.rorbol.dk/" */ }
  "roerboel.dk"            = { email = "fastmail", webredirect = "https://www.rorbol.dk/" }
  "haveraadgiver.dk"       = { webredirect = "https://www.rorbol.dk/" }
  "xn--haverdgiver-18a.dk" = { webredirect = "https://www.rorbol.dk/" }
  "allfootball.dk"         = { webredirect = "https://www.rorbol.dk/" }
  "ftbll.dk"               = { webredirect = "https://www.rorbol.dk/" }
}
