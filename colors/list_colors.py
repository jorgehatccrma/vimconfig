from BeautifulSoup import BeautifulSoup as BS
import requests

URL = 'http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html'

headers = {'User-Agent': '''Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_5)
                            AppleWebKit/537.36 (KHTML, like Gecko)
                            Chrome/50.0.2661.102 Safari/537.36'''}
result = requests.get(URL, headers=headers)

soup = BS(result.text)

spans = soup.findAll('span')
print ":let colorlist = {",
data = {}
for i, s in enumerate(spans):
    style = s.get('style')
    idx = style.find('#')
    hex = style[idx:idx + 7].encode('ascii', 'ignore')
    ctermidx = int(s.find('b').contents[0])
    data[ctermidx] = hex
    if i % 4 == 0:
        print ""
        print " \ ",
    print " {}: '{}'{}".format(ctermidx, hex, '' if i == 255 else ','),
print "}"

#  print data
