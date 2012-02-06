class phingdrupal {
  package { "phing":
    provider => pear,
    ensure   => installed,
    source   => "pear.phing.info/phing",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { "PHP_PMD":
    provider => pear,
    ensure   => installed,
    source   => "pear.phpmd.org/PHP_PMD",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { PHPUnit:
    provider => pear,
    ensure   => installed,
    source   => "pear.phpunit.de/PHPUnit",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { phpcpd:
    provider => pear,
    ensure   => installed,
    source   => "pear.phpunit.de/phpcpd",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { phploc:
    provider => pear,
    ensure   => installed,
    source   => "pear.phpunit.de/phploc",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { PHP_CodeBrowser:
    provider => pear,
    ensure   => installed,
    source   => "pear.phpunit.de/PHP_CodeBrowser",
    require => [ Package["php5-packages"],Package["PEAR"] ],
  }
  package { "PHPDocumentor":
    provider => pear,
    ensure   => installed,
    require => Package["php5-packages"],
  }
  package { "PHP_CodeSniffer":
    provider => pear,
    ensure   => installed,
    require => Package["php5-packages"],
  }

  package { "HTTP_Request2":
    provider => pear,
    ensure   => installed,
    require => Package["php5-packages"],
  }
}
