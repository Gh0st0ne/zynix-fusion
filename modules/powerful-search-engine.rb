#-------------------------------------------------------------
#
#                     Linux Evil Toolkit
# 
#                          By v0id
#
#
#-------------------------------------------------------------

module Search

    # User Agente :: os -> browser
    $user_agente [
        ['windows', 'chrome', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Safari/537.36'],
        ['windows', 'firefox', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:70.0) Gecko/20100101 Firefox/70.0'],
        ['windows', 'opera', 'Opera/9.80 (Windows NT 6.1) Presto/2.12.388 Version/12.16'],
        ['android', 'opera', 'Opera/12.02 (Android 4.1; Linux; Opera Mobi/ADR-1111101157; U; en-US) Presto/2.9.201 Version/12.02'],
        ['android', 'ms-edge', 'Mozilla/5.0 (Linux; Android 8.1.0; Pixel Build/OPM4.171019.021.D1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.109 Mobile Safari/537.36 EdgA/42.0.0.2057'],
        ['android', 'firefox', 'Mozilla/5.0 (Android 4.4; Mobile; rv:70.0) Gecko/70.0 Firefox/70.0'],
        ['mac',     'chrome', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.101 Safari/537.36'],
        ['mac',     'firefox', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:70.0) Gecko/20100101 Firefox/70.0'],
        ['mac',     'safari', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15'],
        ['iphone',  'safari', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'],
    ]

    # Sources
    $jusbrazil = "https://www.jusbrasil.com.br/busca?q=#{term}&p=#{page_num}"
    $facebook  = "https://pt-br.facebook.com/public/#{term}"
    $twitter   = "https://twitter.com/search?q=#{term}&src=typed_query"
    $bing      = "https://www.bing.com/search?q=#{term}&form=QBLH&sp=-1&ghc=2&pq=w&sc=8-1&qs=n&sk=&cvid=5EFE696D33A242FDBD012D5F1C0D3F7C"

    def user_agente(term)

        response = Faraday.get "https://duckduckgo.com/?q=#{term}&t=h_&ia=web"
        string = response.body
        index = File.open('cache/index.html.tmp', 'w+')
            index.syswrite(string.scan(/#{term}/i))
        response = Faraday.get "https://duckduckgo.com/?q=#{term}&t=h_&ia=web"




    end
    

end