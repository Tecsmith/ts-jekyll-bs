---
# Front matter comment to ensure Jekyll properly reads file.
---

// --- Detect OS from browser ---

function detectOS() {
  var userAgent = window.navigator.userAgent,
    platform = window.navigator.platform,
    macosPlatforms = ['Macintosh', 'MacIntel', 'MacPPC', 'Mac68K'],
    windowsPlatforms = ['Win32', 'Win64', 'Windows', 'WinCE'],
    iosPlatforms = ['iPhone', 'iPad', 'iPod'],
    os = null;

  if (macosPlatforms.indexOf(platform) !== -1) {
    os = 'macos';
  } else if (iosPlatforms.indexOf(platform) !== -1) {
    os = 'ios';
  } else if (windowsPlatforms.indexOf(platform) !== -1) {
    os = 'windows';
  } else if (/Android/.test(userAgent)) {
    os = 'android';
  } else if (!os && /Linux/.test(platform)) {
    os = 'linux';
  } else {
    os = 'unknown';
  }

  return os;
}

// ----- general Doc ready -----

$( document ).ready(function() {
  // Change copyright year
  var copyright_year = $('#copyright');
  this_year = new Date().getFullYear();
  if (this_year != Number( copyright_year.text() )) copyright_year.text (  copyright_year.text() + '-' + this_year );

  // Modify external links, by adding an ".external" class
  $('a').each(function() {
    let href = $(this).attr('href');
    if (typeof href !== 'undefined' && href !== false) {
      if ( (!href.startsWith('{{ '/' | absolute_url }}') ) && 
        ( href.startsWith('https://') || href.startsWith('http://') ) ) {
        $(this).addClass('external');
      }
    }
  });
  $('.external').each(function() {
    $(this).attr('target', '_blank');
  });

  // Add detect OS class to the body tag
  let os = detectOS();
  if (os !== null)
    $('body').addClass('os-' + os);

  // Add dots to the ABN and cut out spaces
  $('.middot-spaces').each(function() {
    var s = $(this).text();
    var s = s.replace(/[ -]/gi, '<span class="middot"></span>');
    $(this).html( s );
    $(this).removeClass('middot-spaces');
    $(this).addClass('is-middot');
  });

});

// ----- enable scroll to top button -----

$( document ).ready(function() {
  tof_button.addClass('collapse');
  tof_button.addClass('btn-floating');
});

let tof_button = $("#btn-to-top");
var lastScroll = 0;
var isScrollingUp = false;

function showScrollBtn() {
  tof_button.addClass('show');
  isScrollingUp = true;
}

function hideScrollBtn() {
  tof_button.removeClass('show');
  isScrollingUp = false;
}

tof_button.bind( 'click', function() {
  lastScroll = 0;
  hideScrollBtn();
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
});

window.onscroll = function () {
  scrollBtnFunction();
};

function scrollBtnFunction() {
  var currentScroll = $(this).scrollTop();

  if ( currentScroll < 80 ) {
    if (isScrollingUp) {
      hideScrollBtn();
    }
  } else if ( (lastScroll < currentScroll) && isScrollingUp ) {
    hideScrollBtn();
  } else if ( (lastScroll > currentScroll) && !isScrollingUp ) {
    showScrollBtn();
  }

  lastScroll = currentScroll;
};

// ----- nab-bar double click function -----

$( document ).ready(function() {
  $('a.dropdown-toggle').each( function() {
    let url=$(this).attr('href');
    if (url != '') {
      $(this).on('dblclick', function() {
        window.location.href = url;
      });
    }
  });
});
