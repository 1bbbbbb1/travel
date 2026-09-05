import csv
import json
import requests


headers = {
    "accept": "*/*",
    "accept-language": "zh-CN,zh;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6",
    "content-type": "application/json",
    "cookieorigin": "https://you.ctrip.com",
    "origin": "https://you.ctrip.com",
    "priority": "u=1, i",
    "referer": "https://you.ctrip.com/",
    "sec-ch-ua": "\"Chromium\";v=\"152\", \"Not?A_Brand\";v=\"24\", \"Microsoft Edge\";v=\"152\"",
    "sec-ch-ua-mobile": "?0",
    "sec-ch-ua-platform": "\"Windows\"",
    "sec-fetch-dest": "empty",
    "sec-fetch-mode": "cors",
    "sec-fetch-site": "same-site",
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0",
    "w-payload-source": "1.0.9@102!6abRtPKnqqWb96tRKlTZ9XAZOEt/GlqnKE42OrdHKX4ROXjlOrddOrTbOrK2+ET5+rApbbbpOSkRKEqR+EtROrV2bEkbKtb5+rbSKrb2Ol4pOrT2OrTRKSKnKtbpOSkRKEqZKEbRKEtRQltZKEjlT6g3w2pvzkb=",
    "x-ctx-locale": "zh-CN",
    "x-ctx-ubt-pageid": "10650142842",
    "x-ctx-ubt-pvid": "19",
    "x-ctx-ubt-sid": "1",
    "x-ctx-ubt-vid": "1788057008048.4702cqjloloj",
    "x-ctx-wclient-req": "52e43dd85af235e3b81b56029d0231e7"
}
cookies = {
    "GUID": "09031066215765783321",
    "nfes_isSupportWebP": "1",
    "ibu_h5_site": "CN",
    "ibu_h5_group": "ctrip",
    "ibu_h5_local": "zh-cn",
    "ibu_h5_lang": "zhcn",
    "ibu_h5_curr": "CNY",
    "ibu_country": "CN",
    "_pd": "%7B%22_o%22%3A11%2C%22s%22%3A28%2C%22_s%22%3A1%7D",
    "UBT_VID": "1788057008048.4702cqjloloj",
    "MKT_OrderClick": "ASID=4897720247&AID=4897&CSID=720247&OUID=&CT=1788057008969&CURL=https%3A%2F%2Fm.ctrip.com%2Fwebapp%2Fhotels%2Fhotelsearch%2Fsearch%3Fallianceid%3D4897%26sid%3D720247%26openapp%3D3%26bd_creative%3D72811126436%26bd_vid%3DnHDLrjcvnWD1PWndn10YPjnkn1NxnWcdg17xnH0sg1wxP1c3nHDknWmYn1m%26keywordid%3D583784692122%26arex-record-id%3DAREX-10-41-79-253-56880212641687861%26redirectSearch%3D1&VAL={\"pc_vid\":\"1788057008048.4702cqjloloj\"}",
    "Hm_lvt_a8d6737197d542432f4ff4abc6e06384": "1788057018",
    "HMACCOUNT": "447827A48AAC2F13",
    "_ga": "GA1.1.1888913259.1788057019",
    "MKT_CKID": "1788057018803.4gj62.1xza",
    "_RGUID": "12771849-e81e-4ff6-9b6f-e0ddff2d6649",
    "MKT_Pagesource": "PC",
    "StartCity_Pkg": "PkgStartCity=17",
    "_RF1": "117.147.44.120",
    "_RSG": "s_a7ed46t919PMB_tDulj9",
    "_RDG": "287d37ad9c1cdb25d30b13006ae6caa86e",
    "_ubtstatus": "%7B%22vid%22%3A%221788057008048.4702cqjloloj%22%2C%22sid%22%3A1%2C%22pvid%22%3A6%2C%22pid%22%3A600001375%7D",
    "_bfaStatusPVSend": "1",
    "_bfaStatus": "send",
    "Hm_lpvt_a8d6737197d542432f4ff4abc6e06384": "1788058821",
    "_ga_5DVRDQD429": "GS2.1.s1788057018$o1$g1$t1788058820$j60$l0$h309218679",
    "_ga_B77BES1Z8Z": "GS2.1.s1788057018$o1$g1$t1788058820$j60$l0$h0",
    "_ga_9BZF483VNQ": "GS2.1.s1788057018$o1$g1$t1788058820$j60$l0$h0",
    "Session": "smartlinkcode=U130026&smartlinklanguage=zh&SmartLinkKeyWord=&SmartLinkQuary=&SmartLinkHost=",
    "Union": "AllianceID=4897&SID=130026&OUID=&createtime=1788058821&Expires=1788663620885",
    "_bfa": "1.1788057008048.4702cqjloloj.1.1788058828632.1788058831674.1.19.10650142842",
    "_jzqco": "%7C%7C%7C%7C1788057018998%7C1.1811510163.1788057018809.1788058829247.1788058832148.1788058829247.1788058832148.undefined.0.0.17.17"
}
url = 'https://m.ctrip.com/restapi/soa2/18109/json/getAttractionList'
params = {
    "_fxpcqlniredt": "09031066215765783321",
    "x-traceID": "09031066215765783321-1788058848593-3724659"
}


def get_json(k, v, page):
    data = {
        "head":{
            "cid":"09031066215765783321",
            "ctok":"",
            "cver":"1.0",
            "lang":"01",
            "sid":"8888",
            "syscode":"999",
            "auth":"",
            "xsid":"",
            "extension":[{
                "name":"rmstoken",
                "value":"fp=CBD79A-C7B9F1-F42204&vid=1788057008048.4702cqjloloj&pageId=10650142842&r=12771849e81e4ff69b6fe0ddff2d6649&ip=117.147.44.120&rg=fin&kpData=0_0_0&kpControl=0_0_0-0_0_0&kpEmp=0_0_0_0_0_0_0_0_0_0-0_0_0_0_0_0_0_0_0_0-0_0_0_0_0_0_0_0_0_0&screen=1536x864&tz=+8&blang=zh-CN&oslang=zh-CN&ua=Mozilla%2F5.0%20(Windows%20NT%2010.0%3B%20Win64%3B%20x64)%20AppleWebKit%2F537.36%20(KHTML%2C%20like%20Gecko)%20Chrome%2F152.0.0.0%20Safari%2F537.36%20Edg%2F152.0.0.0&d=you.ctrip.com&v=25&kpg=0_0_0_0_0_0_0_0_0_0&adblock=F&cck=F&ftoken="
            }]
        },
        "scene":"online",
        "districtId":v,
        "index":page,
        "sortType":1,
        "count":10,
        "filter":{"filterItems":[]},
        "returnModuleType":"product"
    }
    data = json.dumps(data).encode('utf-8', 'surrogateescape')
    response = requests.post(url, headers=headers, cookies=cookies, params=params, data=data)

    # print(response.text)
    # print(response)
    return response.json()


def get_data_info(resp, k):
    feeds = resp.get('attractionList', [])

    with open('data.csv', 'a', newline='', encoding='utf-8') as csvfile:
        csvwriter = csv.writer(csvfile)
        rows = []
        for feed in feeds:
            card = feed.get('card', {})
            coordinate = card.get('coordinate', {})

            poiId = card.get('poiId', '') # 景点id
            zoneName = card.get('zoneName', '') # 景点区域
            poiName = card.get('poiName', '') # 景点名称
            commentCount = card.get('commentCount', '') # 评论数量
            commentScore = card.get('commentScore', '') # 评分
            isAdvertisement = card.get('isAdvertisement', '') # 是否为广告内容
            isRecommend = card.get('isRecommend', '') # 是否被推荐
            districtName = card.get('districtName', '') # 城市名称
            coverImageUrl = card.get('coverImageUrl', '') # 图片
            distanceStr = card.get('distanceStr', '') # 与市中心的距离
            tagNameList = card.get('tagNameList', []) # 标签
            detailUrl = card.get('detailUrl', '') # 详情页链接
            marketPrice = card.get('marketPrice', '') # 市场票价
            preferentialPrice = card.get('preferentialPrice', '') # 优惠价格
            preferentialDesc = card.get('preferentialDesc', '') # 优惠描述
            price = card.get('price', '免费') # 价格
            priceType = card.get('priceType', '') # 价格类型
            priceTypeDesc = card.get('priceTypeDesc', '') # 价格类型描述
            isFree = card.get('isFree', '') # 是否免费
            latitude = coordinate.get('latitude') # 经度
            longitude = coordinate.get('longitude') # 纬度
            heatScore = card.get('heatScore', '') # 热度评分

            rows.append([poiId, zoneName, poiName, commentCount, commentScore, isAdvertisement, isRecommend, districtName, coverImageUrl, distanceStr, tagNameList, detailUrl, marketPrice, preferentialPrice, preferentialDesc, price, priceType, priceTypeDesc, isFree, latitude, longitude, heatScore, k])
            # print(feed)
            # break
        csvwriter.writerows(rows)

if __name__ == "__main__":
    cityDict = {
        '北京': 1,
        '上海': 2,
        '广东': 100051,
    }
    for k, v in cityDict.items():
        for page in range(1, 16):
            print(f'{k}正在爬取第{page}页......')
            resp = get_json(k, v, page)
            get_data_info(resp, k)