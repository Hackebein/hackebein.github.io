var REG_OVH = NewRegistrar("ovh");
var DSP_OVH = NewDnsProvider("ovh");

var GITHUB_PAGES_IPV4S = [
    "185.199.108.153",
    "185.199.109.153",
    "185.199.110.153",
    "185.199.111.153"
];
var GITHUB_PAGES_IPV6S = [
    "2606:50c0:8000::153",
    "2606:50c0:8001::153",
    "2606:50c0:8002::153",
    "2606:50c0:8003::153"
];

D("hackebein.de", REG_OVH, DnsProvider(DSP_OVH),
    MX("@", 1, "hosted.mailcow.de."),
    TXT("@", "v=spf1 mx ~all"),
    //A("@", "5.9.72.186"),
    GITHUB_PAGES_IPV4S.map(function(ip) { return A("@", ip); }),
    //GITHUB_PAGES_IPV4S.map(function(ip) { return A("www", ip); }),
    GITHUB_PAGES_IPV6S.map(function(ip) { return AAAA("@", ip); }),
    //GITHUB_PAGES_IPV6S.map(function(ip) { return AAAA("www", ip); }),
    CNAME("www", "hackebein.github.io."),
    A("*", "5.9.72.186"),
END);
