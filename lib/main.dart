import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BookMyTrip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BookMyTrip'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Row(children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assert/images/bookmytrip.png"),
            radius: 25,
          ),
          Container(width: 10),
          Text(widget.title),
        ])),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 10,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: 540,
                      height: 220,
                      child: Card(
                        color: Colors.amberAccent,
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 20,),
                                      Text(
                                        "Manali",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                  Text(
                                    "Manali is a hill \nstation in the Kullu\ndistrict of Himachal Pradesh,\nIndia known for its scenic beauty\n, history, and culture. It's \nlocated in the Be\n"
                                  )
                                ],
                              ),
                              Image.network(
                              height: 250,
                              width: 300,
                              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUREhIWFhUWFxUaFxYYGBodHRUXGBgaGBoWGRgYHioiGB4lHhobITEiJSkrLi4uHh8zODMsNygtLisBCgoKDg0OGxAQGy8lICUtLS0tLS0tMi8tLS0tLS0tLS8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALUBFwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAEAAECAwUGB//EAEAQAAIBAwIEBAQEBQMCBQUBAAECEQADIRIxBAVBURMiYXEGMoGRQqGx8BQjUtHhYsHxFXI0Q1OCshYkM5KiB//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACoRAAICAgEDAgUFAQAAAAAAAAABAhEDIRITMUEEUSIygaHBYXGx4fBC/9oADAMBAAIRAxEAPwD0rgvixDIuKV2yASOk7djNbvC8Wlwarbhh6f2ryXQyxrO6g9cBtRAP0Ionl/MSrAoSHgiVJyJ2gb5G3pXXLCvBxrL7nq9RNcXwnxfdB86q6x0w09NsZ22rpuA5xavAaGg/0tgzExHX6djWLg49zVSTDDTUiaYmgYqalTTTAelTTTUAPSpqVACpUqVADU1PTUAKmpUqAFSpqVACpppU00ASmmpppTQA9KajNKaAseaU1GaU0CJTTTUSajNMCc0qhNPNAEppppiaYmgB5p6rmlRQHCfECW9f8sEhUVC248sjVtvEfWsy/Y0XCBg6h5Y2nSQd/X9KP5o4kQxIeXIGYyVCkxnyqKlcuW3a62QWSVYx5QiIwI9yhHsR7VtGTSMZRtlXChgZtkzlVE5byhmbVOBH+9T8cahAh1grAg6owJEbCPyoocCyudbKFII8pzp0AbDAydx2miOO4BHBZQJt21I0kGdIEREFpDN9gKXNWHB0EcD8SXFUKSHho8xzEERPeY/PvXScu5tbuiQQGgkqd1A3+lcGbphVuLDxCmDmd5HUbfeaJ4ywECtq+aZYTk4AHsCft2pOKfYpSaPQFYESDI7inrzizxN5dnKNsAJ0mfMTjoJ3rb5f8TOIW6uruwEdgYHXf/mpcGUpo6ulNU8PxKuNSEEfp79qtmoKFNKaalQMeaU00000APNKmmmmgB6VRmmmgLJTTTUS1R1UwJzTE1DVS1UCJTTTUdVLVQBKaU1WWqJenQFuqm1VQblLxKKAuLUpqnXUg1AFlKahqpiaALJppqE080APNNTE0qAs4nh9Im3pV4VhpJiIQqSDmcz6SaB5bwWouy4dSwKaZ8rhtIgxBTB95zgUZxKI48S1CXP/ADPMZKYLMATkgEYB/wB6exwsxqGhsCfKSDIJBzO3UGqTJaK7/EMoDANMjMNgavMTtpxmTvEYNN/GGPECkhjAxIg4mFkRiPsOtEW+HBd2JwEK6P6iWHmPudcj23p7PEDUHVNO40wQqD+oiO8j69aLCi+4viL+HUF8ojGonVJjuMQNsbdGDsLK2ngQQek6WJOD1PXHSO1U33MyICzIA/GCZAk4yQ09INK/xwBzBMiCDEQpExHpGPTpQKi/hmDpp8xYLcg7fLMD20j8jQlowc7FhA9P6vaJE5EgVo8ptjWblxmJKtAxIkEYjEEMTBnc9RWfxHCEHWhg/wDpkgFgBsCJ7zPoB1NCYuITZZ0bWhjaDvjI3GOlbfAc7cmXAKNGlgIiJ1T3jBx61z/D32IAPXYAZOIcAdYPT3owNoIhoEkwcaTBg+nyxA7mkxrR0PA87tXADJWTADDf7VozXGPYVmYO2DEtAlSSWiR0DAT/AJp/465aEK7YmBg9NyvXbv7Uq9iuTOymlNcynPLoEsEInMdNycz6r/ma0+A5stwCRpJmAesbwaVMFI0qYmo66U0hiJqJNImok0wFqpi1RNRJpiJFqiXqJNQanQFniVE3KrNRinQiw3KiXqBFQNOgsmWptdQpqAsuD1IPQ00tdFBYWHp9dCeJS8WigsK10tdC+JS8WigsK10qF8WnooLPLV5l4aKZJNsEMozCkSRk52BmNprT4Lm6M+oN+AAhflPl3Vl7DEETg+lcrwNs2ybjW9Vu4LZI1DyiYJ7mAeg69qGdGslSBGtFcBTneMyJAOkkfTvWvBMjlR6WnEJcSCQQV8hOcATmf3gGq74YSpeAVbEzO649TEyTg++OA4LmR+QHSBHqNpgjp79K6LheZ+Iq/wBagYAMuDiPaDO/0rNwaKUkzVYzbhYQmQrCCY2DHfckn2nGKJ4dSAp0AOIERkEQnXIwJn+8VmjiYLahq+YBSBkROQWM9xVlzmGSxON+xP8A3EjYD22PWppjsP4bi9IBZCNOpmXYgCJmd9ttzGaJtcQLoGkKZ8h83yg41CCBgGcR+lZtjmSlpEloiW/QDpV9riAzhljUPsSe/XPf3pNBZo8DwGdSMzOFDhCF0xqKqB5cMd95Mn0ge9cRSTbGpSxV5B8mYMnJGV39IxV9rmL6SyyECFCN2LBC+07kznfymOlVhg0NqhvxSMOnyyywdJO85wSDJJhAK28DzHzEkr9Y0yTEYAx0mKlbMy0yVYKRAIyYnV39z160Uyhlm3AjcHORt1jYnP61TwVzwtVu7JlQA3dZH4l7ARPr9wCdm3rAbS2kgRExI1HfuMAz/tT8NZV30mQASYDESY8wxE7YxRfGcdaa2ELaYyZjOs4O+Pmn6mqfEwXgykbSRpJgjGIBlvaKVsKRYnNGUTBKwTjJwdoPWCcDtW3wjhkV9UhwCMdxOe31rk7V0AyNiQoUdTBgZ6e3f0NanDcdoGnBSYgiesn/AH+xpsEzYuXwNU4j8/aqrXEhhIP+Peq35kC3l0gCfmmZ3U46bSD2NVX7rzpTSDggIgaQ2Zkify60kDYZqpiap4VxcIXWFcbjcNnf/SdusZ2qnieLFttL74yCCM9f2Kpb0F+Qo1EmoJcB2IPsac0wHpqalNMYiKjpqU0xNAiJWm005aok0AIpUSlOWqOqgNDeHTeHU9VKadipENFNoqc0posKIaKVSmlTsVHhdi4B8yAgnf27QcVHmF0MSEEICdEzIU9J/wCc0P8AxI/f9qmhU7fatlp2Y7KjciOke36wP31o/hUcwVdR0IY/1HeYIjqR0+9D+FOB9jSUlT196u7FZpjmeZcZIA1T+kY6ZNU/xp3O42/WqbJDagRJIwegjr5dh0+tC+G0TuPSiKQ3bDxxxnc/v9ir+H5uwPv/AH/f5VkAe9XIg9fT0quKI2dZy/m7nStsxEwB18hXE9pJ7++1Ruc0vKYecE4J9I+o3n61i8C/hnWCCwj1GaNfmTMxdoLGMwACR1IAzWTgr7B1Ndzd4DnRQqsathIBEDeCTvtncYro7/FKwKNlJgCeoJGCMziBHqK85N8gmIg9IxtG3Q+1dByzj0KBdIRhIMH5gTgEOSDkk4is8mOto0x5LdHRyxXyG2dIMC6sk7yNY+4kdO9Q4TmpVtLLD5DA7dok4+bMjBn2oNbwUgggAY1AyVbEMwAJgRv1yZEVl8yeQGVhiZ6xEkCBkYMfTpms0k9Gkm1s6XmnMdBUeGgVlOgAbEsT2G+c+h3oMc5tgYOg7Z6rv/7T075rHYu9py94obUDw+jQZGZ75+xrPs8RmJwIG2YkAxjpjerjiTRnLK0ztuA5shDBlBBAk6j5SNjgbHvMfWtpePCBioBLatGmIUADM/avOOFuM5a3JM9AdxMifrvtv6Vpcn5mwHhu0rGpB0AO42nOD9KTxDWU6l+JJ0npsAvUySZHXrV/i2fDYrl9CmTndtLT6/3rEN4zMkGenTt7Zn709q9uJ7RO2x3HUjH3pdMfUNC5xNoZgqwG64zAgnvn8hvmlZ5g0SWQgEjJIOJM4H09/vQGtgQfb6nAzUVOJI+uc/3H9qpQ0S5uzescWr7HPY/vNO1/1FAcTxSMoBtqjRGrT6gaiAc7bx19KGJjZwfacbQCCMT3k0ki+TNu3dnageM44gwvT6/8UKt8jzdMbH8iPr+dBkksSSAG7dBO1XCCsznkdaDhzByekDPuN4mr148kiE6wcz9sVmE9znG3tj+1G8SstoXqAT6AAkD8/wBKqSXsKMpe5a3FkfMh+hmnHHJ1JHuCKqe6EJAk7Z/3x71RdbUen265qUkynJryaSXQdiD7GpaqwnsTkDPpie9NZ4p1MEk+hp9O+zF1q7o3tVKayl5mOq/YzRdnilbY/SpcGi1kT7MKmlVBelSoqzxGxy5WYCSBGTjHtqiauXlIESxBIgYgTPSJ1eu29QLMuAPLJycx/nairXFmAjMdOJHTeRA/ec03OXuVxQI/Cvb38ynY5jrv+lUJfI3XFajqP6m+YwSeg+mM5pW1DsBcYrAADjIju2Zgek01P3JcEB27y/MpgwR9CIP+9W23tlYYehgxJ7mf3+tFLy5dQOpWz6gsImYIoZ+Bj5wFwCCCCCD0lCQD6VSaI4NAty1pPpnr61O2wotFBUeWVn9+1J+CU/LvvB3itFNeSJQIq3t+VTmhxaYdMf7VYlyqMWi9Wq+zdgyPtQw+1LO9Ig6bhuJGjUreYaSQYzPQA9p64NW8PZUx4gOmB8sSwk4np12/tXOWrnUGrrHFlWxOCTHvWDxvwbxzeGauuJWCBJgHtHQ9cRPvVaMmTgKNjM+nyNk5z0qm5zEssbSe8jb70JqPT6/8U4xfkU8kV22aScayMpU4QaQcfKPw+3+Ka+bfnYnUSPKoJwxwN1yABJBj0PSs7XP796a0cxjpvWnBdzPq3o3OX89ZF0OJyM/iEDG3zfqM/TX4S9riOwgx32H5RjtWB4gA98mPrGetF8t5p4YZSAwmR0I2IExkSJiM1DV/KjRNL5maQ5iOsEf8DH72FSHHLkwY/wC4AwY/wawbtwucem3T1gfvAp+HL5Khj5YaBPlO84rTp6MurujeHHLPzbHf1ESB/wAnfrvRtnQ5C+KNZBxGO4DHofb171yj39wBiTpBJOmQAT74FWJxbTOozET2H/FS8TKWdXs6i4htnWSAu6spkQT0+h/KqL7AAMTgz9SIn9d5puF4sOjIIcAIQWkENpgggeomZ6/YHitGkIq6XJMScBTKkS2VImZ6lVrON3s3lVWgxHGGDbZ+o6f5q7iCdTMSMscq2BJxGNu1YL27lsiJEBfUHV5l6f6gKI4e8QSWOAQSgMalj8M42O3vWrXlMxT8NGk1xoiZzPv0qw3RGekA9QT1OfrQfHMrANa1AFiDHzST5ZmRA2nH13oU8xKsQvmWTCvuvYyMGO80kuXYb+HubF1lD4OJ2nfPr16fSpJa1LqI8oJE7+YjGCO0daxuH4+d0HvPUfs0Rb5mumASJIJHoO2MZ9e1DhLwEckfJdc4dhiNp/z6mqFOd+tT/wCoBjLZ3I9JJx6e1Jr6H+/WrXLyQ+L7BFviWHXV7/3pUCXE/NFKjig6jRxSPaKHWjFo+YH5eogLAJ2GRQnDqZB223jriROa0OI4NUUKxUsdgNQ8ogkHUn03609hFvMq24UzpYnIAB+b1/xXEro9NtWD7wrExO2YGdyAf0p34YKwEyuJIXYexI6+tGXOXqLgQXA4ggtEZzA0nMzEZzUPCgkYlTvn8yPr16Uk2hNbB0PQmN4JBB/SjeBtyDGpoI1QcaTtqWJbIneMbQIJfB2LXhamaX1EFZ/DpmQSDuZFP4aW2lMjOfw9TgbzOafIloot2Q8MoyBn6Hc6TgZHbp7USeHcBfKNBZp1ITOkHHXBncGjeDvh3BYIAskgidZI7CM9RQ96w5l5AWQdAk4EAxj6kZG9NSsloCv2bZURIZQJJIjO8A5/f2p47gVEaFJEAzIOTGMRj8+/oVOt9KQZAnVAI9cfXbvWld4NlH4WaCBImTiIx23mI671XKjPjyOXu8Exztj943qB4J/2a6ixwqjUSykrGNJIbvk4H51G9pPl0p5szEEbYx8ozVdVkPEjloZTBEVajjats8ACBqAz26fWnXk6eoq+ojJ4n4MhbgGIpw0mtm3yneCuAc5/c0SvLSNlMfvtNHOIujI58rVlpJOa2b/L2IiM9vSgxyxp9jn0nFUppozeNp9i5VGgJ26/sVTesEH85o9rLAfI3YmDmn8Jj0rOMmjqlFSQNZQHJAJjfbpFGW1bLCJMZwT+RHvn/FCtaI2FTt2T1BmtNsy0uxZftM24AI22G/Seo+tVngiT5RONpBP5f2qOkzufpRlnWN4I/wBQB/UVe0tGTcZPYCoK9x7Gr/HnBz/z/wAUclwj8IH/AGiP0pNckZUEdiPfI+9Jv9C0lXczi7bhj0G/QbD6VK6Cxn99sdsCtBdG2gffb2mpMFxpEYzMH9Io5r2Fw13AVdhMbEQR9+n1NM9sH5hvuR/mtIWRvpp2tjqDQpLwPi/Jh3LZBkSO1RKk71tmyO35VH+E7D7VayIzeNmSLRqsoa1X4Y9jVLWatTIcaABPelR54Nu1Kq5Inizz0XTqnr0z9cVX4jCckGT+cV1tjg7OCOHDzAESwHXZZIkT3OOgrO4jkJuXALYK6jtDH6LiTHqO1efHJGz2JQr9TCt8QwM6jJ3NXcNxVxWLK5BMyQSO/b3pcw4PwfmYGSQApnbv2qPBWNZwyjrkxjv+81ryizNpl9rjGChMQJjAkT61J+Z3FUBWIgyYPX6VVxHDuoUldz0IM5PY+lVXuHdZ1AiY+nv2+tFRZOx7vM7hiWOJg+/qKu/6xeyNbZEbntE77xQicMxn0En2/Zpmsncg56n+9VxiBe964jSSZYAzMyCMZ9qdOOcGQ7A99R7Ed+xI+tX8r4R7txlUMx0NtE5EL83rHrQnEcHctmHQqZ6jsY32NKldA1qw4c4u/wBUe3sB+xsKdOa3AwYtqMEAkdDQ3D8uvPi3ZuueyI7GO8AbZqC2G1+HobXMaYOqdo0xM0uKItmnw3NLgbWCSRJ/3mOn+3pV/wD1e7GXPSfWIj9P1onhvhy9bJVwoLLA820gzqMYIx+zNY44e4Tp0tqziO2//NJcW9BKMkjSt87uifNuD0H3z96IPxJdIAwI698flnOKxTaYCSCMx9R09DUarpoz5SRu2Pii4rSQCCqgjaYgyfU5+9TX4ubUSbSb43x7HcVgpwlxxKW3Yd1Vj+god7ZBgiCOhwR9DS6cWXykkdL/APVD/wBPlzid+0/2ogfE4aSbcHpp2Een261ydSQ0+khc5HVp8RAkjRA6EbmcGaS89QTKn0j2rm0FSLTVKCM3JnWWfiO3/Sw9N/p61cnxDZ6oYnAgbfQ/lXIIs1aw6Uumg6jOvbn1nYAxGMfl7ila5rZYQYB9ZH+JrkQTT5p9MTyM6tuKtHZl+9TR1/qHfBG1ciQwyQY7xj71Zw8vhczsBn0p8RW/Y621f7MPaauTi2md8VyzWXT5lZYEmQRH3q5eGu6PEFu5oP4wrae3zRFS1FjUpr3Oj/jIOx+/6TUH4zK+p7Dse1ZnCcg4xvP4TAHaWAY9Z0k6oqviOEuKWC3Ga4q6vDg+0Bm8tZuWNeTaMMzTlWl9DZN5ujGqvEPvXP8AGX79sF9TaYkTHmHcLJ/KtHguLJQM1u+xySUNqNzjS22KbnGKsz3PsaNu8QIpVj8fzdkJMsFmAGTJEdwNJg9jSquSZShPwcdwHMS7IlwWypOkay+lZkyQWjJPoK0uYca9tpN+3cXSE0hZUKdxEwy42JI2rft8JYnxksqvlJVoiIIJxceFaDGT+QND8z5rrupbVfK5GoapnOAG/CYXG4EiuJzt9tHdwV35ORfh24h2KeGIjUzOlpRPUm44H2qxOWMG0Iy3gILNZV3VcwclBqj/AEyOxNdGOUITqKvbW7GiUOrSQSAI2gKTsCIbeIrS8O5atQbhZdLbLomFLeQ6g0wBAHWM7mqeZLsawhFv47+hw5sZ0u+mJw6tvExEGM4q23ebaTEbHAYZweh+tdAvC2rq6ioK62GkuQwJj5iZIIkYnqMVDguWrAtM2kuYCsoyQOhJ7D0rTmq2YuPsaA5EfCLI9tWYLqRGXRtE/Ng/Q/nSthUb+HvBIZZPyw8E5kev9Q+lGnmv8IVW7etnSG//ABsmJj8dxA0gg4GIYdqa1zk3FZFb+V/MZmN1bhMgsTrMFADtpGPTFZ8ibi9WBcu5oLqqjcMiDyqpCnUFJYgK5BAjVGkg9OxqVpPF8TVaCQ7LP4mg9DhTBkah9uxSi74q2+HDnE6oJUoIif8AiTgY6zsXh4sMYAMFC0GdJj8OuJxkDPei13BuV8ULgn0hrW4YSUOgrEndCxEEydx1wYqPAIEconC2rZKkm40tr8w8qEIWTBGEgQNhudDmlxBdFyUDJgH+VIOgtGpruMHt0PSiX4sm0XYpJEtEHAIP4WYRp9emKm0iF1pP4opfUE45bulblxSZEKFnSEECAB+LJxA/KKpTSILqztIYYYgrMBY0iNMAHByetDWuPBCaQ26F5GAsgmMyJGxNVtzEm5/LMjXtqbcr1YQemxodrsjohJS+GcqQfd5Kt1V1rjcKDpbbEyMALOO4GQMENOUcNIJtxb6v4rHOfl0+vecRVnBc90yGvHP+kxP6/QgiqXtNnSLiJcbAKMFbywIfTpnYDMU4zl7mThHk/wAr+g4O1x5tBijQsmTGw3aOp2x+VUXuFNkFgA7uVIlQNo3LGAYBEHvtVdzhRaY/zAVMSAGyTIzIg4MTGIBkQKZ1TYQxYhZwTLHEwsRPciY+tJd9EZfUqKquTf8AvcazypC2q7ZUjDK4gBgNwyA4M9Pypxy3h9JusAgDaWXSBpG2o6oAGNwQPzqFnjjbSAQdLfLckuTIBJUaSN9uk9IrP5xxC3grm2oKsxUbSpiCN8yT9KcpyXkcIxk7S7/YtscVwpc20FpgRhipAY/0gyQTts2aK5xxCBQRwstuTAKLCkkaQZWY7xkDNYhsuwnwWZCpyF1KYZRuRvk49+1Rvcwe2gtG66q34dOclhAY7Kc/UYjqllvuVl9PkUlKFV5TX8P+hFw0MpUahJUZC5giZP596O4LhLbvDXhpE6tILNgThFB1ZgYneub4jimsE3AGzMZiZBE4zuf8VP4N5+9q5cm86i5qZtKKQXMeYyRB3Gx36RV9WS7CeGL8G3xpEjw7TKq6l1NvdYbsRPl9h9alwPJb3EPbW2IDAsWYwoAx8wBzIIiK2uL5zZvobZ4nBk+ay0e4MKpP+oVzjc2ur/L1XANbLqGoagMKwzEGNW2PXc6LLJqjGHTnLXj9KOp4FWsXFtcRdI1eVAgLkMDGnSImTAmO2cmNc/D/ABJ1B7VpxuGBgt1HlMw3/uPvXD2eW8aYu+I4+Y+ISpwWnytqlQSJkYM9jV3DfEHGIfD/AIu4Xg65LEJmMMykbiIA6/Ws9+GVPDh7yX4NXmfBXmuKP5oJVwVZpWQM9V7kwQYPU1by/hNN+1ZZk1+EzaRrnUQ6hwiA22QRu0kRtQScwS6niXL/AIlyQsm2HcQfl82SewAG+BUl+I7du4mi+6qvz2itxSxMS/mwOvv61zyhkl5OuLijo7nObqqoNy0Fezq8YEFfEJ2QAKXkEkNAGPauW5HxFjhizsTkaTnUTGmPKP7d/ch8y+MUvMFYXBbCaSIWWMglpAxIGQMRXKcr4zTeQu+2qcxHlIJHc7wPaqxqST5E5YRmuJsfGHM7DOzKpOoAHyxAXYEMoKxnqfpV3w+OFuHWLgtNHm1OBMCIPm1EdpEVzPxI/DeIf4ckjGSCAd5mTgiB0zJoz4W54LQ06DP4SqK25E6icjb1+lKzGXpIyhwTa+p6HzD+EvJbDXrbm3j+XcBIkZkISeg3FKuI4jhS9x7weGfP6djtG0RSrRS9mEfQSSpSf2NHgH0Pc4e2/isViNBIVDMyrKRESIzM53zqnkDi4l284A9WwNKmTAIJjsBGRW/w3whxahw7C4Cx0q5a4NMgghQRpneM+9ZXMvh9OHtm9xdlW0wGuvbPUwJIAAzj7Vm5s7ceLm+6X7tIH8ckBRdZVEAFPEJIyB8lwE75me5NC8we2GXxLpW4flJtlWbcAAu2Tk/nRFu9Ytqrt4aAgMrkTEyRsZ2H+cis+7zQ3OI1K1tjpKpdtkldKsWgxOliQMAn8MGRnni53v8Ag6suOEF4f7N/77A1q/cR3hbu3lYjaBuWKmfoelUcFx99rdwLi7KsrEbAaiYB+Y/bb2BH5jxBa8GBcwVhY0mYBLAMREnY7/pW9ydmS6gKAqZBXVqZiRpiJMj5WyZkDbEdLlqzhjBJ0VcM5w2m1dGTObRLbmTbOnuD5J7mnPNuDkNd4a9beZm3fFxW3IDK7LK74ArpeP8Ah+wRqFq22OhHXJxG+O9Ylq0nD29Vy5atGJ8MqTdGZ8yLJWZPzRtvmsVmk9KP3NOhGLty+wTwl3h2JucK9xGgxrDSWB1KBq80FmMhcsNvlEF804DUfHnXcUgCQ641HrMEiSds5NAcGVvw6uX0EMdICBSJCl1eCdmIPtRPAc4u2mDcPb1aURfGe4CpUD5YLHUfL5vXO9ZcJ6dv9tfkvnG2tE+N4wBT/NOUBLAMoDZXGqdRGmIHb2qzh+P0yWspckMD/OcGGGf5bSOlYPMuaeI3nFrWTk23JBd5MeGhOgSCSe5AmTWjxPHabTBlIcCPNbZwSBPlZRC4JEn+1dcIUt7MMkretGhd5hw6kqvLwty4gUNK7aSD51kr8ix1x0gEjcJyDTZ8UXFkHVcDFAQAPNpn/VCydM5O0Tzlzm/FF5cKo0mCoQlQBq/EqzjGSN6flPGF3Nq4rXUDPDKBqSGILAZwe2d8TtWiUY6br7mMozaTj47+NBlocLrC278EE6gVZoA2hlSD77GtP/p7sAQwVgQQ3nIYDbyP5lmJ3A38tD27liQHvMiJoA1XLIhRAhgVXSRnEHHUmaB5xzfhbYNuzdv3ARKm3exIxGsKMyNgczU2hZFlmqi0vubtzlpCMXuLgEk6dInJMyQAPXFU8C1tCbdwBbhJwxBnAJ28oGT1z3NA2+D8Wyj3uJuCbQueHxBhRqJENcCrqIKdYInsaFXh/Fa3pm4S3Ds0MCVQsdVsEYb5vmDREbRlcknaMJeky5sbx5ZV+q1+QvmvPOGtMEtoly5IOlRAU6gJYgRvBI3xV/I+btxd3RcNksERjbNtlDOwbxAoJYeUx5vxBhjBrieO5cWe6ba+QXLgUCf6jiBMwIzRHAluHJRdLM7KmjygGQc7zIaF+tOTTZt6b0ywQpNv93/qPQG/i5BtpbFtHKMo6gCSAeh2iBH+1L8x4g3FDcKPCOoNLKWUjZswIOMb56QRV3w1xjNw3h8Sy2vMYXRg2yi/PgapJbfpp7VG+gucXY0hbi2bU23DBUGkkeEV2PljfGR2rnahZ6kfV50u5598Zcwt3L+m0pTGlwVVCCO5nP5QPesBH0QwIDBpBU+Ye0bRFei/HnD27l6zrXw7jKVUW7asbhlZBYNAAJjfrjevP7/BqC0NphmGkhpBAnIzGcVpFqtM58k3OTlJHVWfiC7atW0Vbaq0lQ1sk6SzEmNQ/FqER/eiB8b3YA02o/7XAxuR5thWZxum3wlpbr6rbNKurwwIDSsqh7nfqK7awA1tXfg0GVMBhOqRk+X5cAk7byKz6/FHNL0OGTtxVmBwfMLd7hLgYvbcySBq0NOlsg4PUz6ism5ehZ0i7IyxK+0R6AfnRfw1dZ7t3hl0hbty4pJABEqTgDeNIXpOO1G815bYsHTccyo6SAQTO2e5raMlFmk4pqgflXFIEHz2mhdLDYZ7CRv3zV3Nb3ioQbrOwB06lGMSclQQIFZfKeJuW2JWCsmNUrjMZ61o8x5rda04NtQpXcPq/LTmtdLZg75UcrxC5YWwxVTGrSO5/p9KJtJw/gE3VPijCiSs43zg5xsfpvRnIOeLw4YG0WDkHDAaYnoQQZHtiah8Qc44a6pJsXNRnzE2wQxG/lHmznP+9Yynejq6ckrowfCstOkXcjclSFJ2JKqPtA60uCcWvO2ondYC7gCCwdSDvkT/ALGgVYidOMH7f70Tw9zSdSknpj5s7wOvap2PRq2eeXBlZPTKqf8A5A/lSrO4Z2DAWHuRnGoA98CQP2aehmnVkdNx/NWuBV8uGU6Bb0gjBYBlncggT0rov/8AP+A4Rm4hBaDXUVDqZmeUdSCoJicYOPxdazn5XwzKi2bjXHZgNK3ElhuY0xo95/StjlfLXsIWt8LpZVYEjiH1NHm0+VfN0FKWVQ7mdX2OqPw9wqwV4W1M7eGpJncZ9gSfSo3U4dMiyGjfw0QBekySojpgmua+G+K4m9cZr1k2k0wEuvdBMlYJL/Nlo2364rB598UXeK1cKES2niWkJmSx8ZQuSMgFdX/7UdW9Inh7nYcdw/LnZLty0ZY6UJW4QxJ1aRolWys/Q1h/EwtpetcTwt9EKjS1uAuJ16oMSMQcTkfTmuT8M3GMeJPEebU2CssANwAWI0wwGMRFdCeRWgP5jEgA5JgZwTJpPNGOn/BzZPUQhKt2ZPNOPvXb5IFyGjSEZlQllmQB3kHrVtzkVt7jM1wY+ZVLFgTG4zpP23o7iON4K3pZ7tuVACGdZAXELpk49KBv/GFkHTZBcnMkaVz6wWn0j7VMJyk6SomXqckvkg39huYco0/+HLBTAeZGsdAZ6TP3+tCLyW6HVtKkNjUehbuOmwobjPi3iWEW1CtJk6JgehLGT9K2+RXm4kKvEN8sAsqsJxkugID56gY6A1Sk0/iaCOXKvmpA/B8KLfgOdFuGbDaQbSyfOfEaSSQIx1o7i+JXSQty47O0DSkCXMkaggXJ6EmtXi+QLYNl1RHClytxXAB1YLFY1GJAmIB6zWDz7nv85eHJTwyVLMvzLJ0wpnBzMjOOm9bcom9Sl2JeMGXQSEIJtliGkwIIYwFYmOjda5nnrBLr27LsbePxHJIzKgxvPvNdTZ4m7b8VSviW3DDIk4Uw0b/jGQI/KuQ5q6gW1UEFQ+qRuTcdl/8A4Kj6etROToeSK4Mr5RYD3dJiCpBPQDEkxGIrVIZQLdq6ygqfKh0jVJO+5+/Ws/4dsB7+kzGhpjcjtW9zPhLShNYAGkRqj+p5+4ZaIv4CcSVg/B8p4aNfEXi74OlDrb5ZIO5kVsvwd5rX8RZQJbVVFt77IkBCAIUOXcqQABpA9Disd+KsiAh1RGFBP4TGTCmYO1TLeIBClZnJGo+8AYONs1nbXc6WgBuCuFy1y6qCSSQZUnVMhTvkfr7VRb4NrZHhOpjO4kEYnBkbD/FbS2LFyU8UBwYKqyqZGDKxInE1qJwdtBpFsRjfJ6bk5qkpvvRlzigDgviG5aUKVVvNqgnALBRqyM5Vfue9a4uIzJce29q2B51Ad1Y3NOl1bzAAZx1xjzAUDfscOqnWiQTgmRBk5DKQZ9Sf0oQ8YUDqZKkwRd8+BsAZEjrknEDYYfBUPqeSvmvMlLIbJKwWlrsAEgTqgxE+bpk7bVha2e7cRQLrMWJ8jMW07tv1ic0ZxnNywuBbUqysI0HT/wB2kTDTkHoTWZZ4pCxlQoLHUwYiUaAU9omYGxM1MVRb2GcLzsqmlGZW1eXSuNJA8gUnuFP371ovzu/4bIvjg21Vn1sBoGNlfJBEYycj0rA4TmPhiF1ifxK2gxJ8sjJBwd+lWLwviJcuW7bnQAzEEEKPMWZgfNsOnY0OKvsUSt3gNTE3AWkhkgSYIzBEZIPfHrUV4hCT4niuNJCy5kGDE52n1o34X5Le4xrqWYJS3qgmAfMAATHbUR6iocf8PcVYYeLYuLk+bDLG58y4H1Iq+TM6DF4Jj/L4Jrly06yQ8JB6g6jpj1mB3o34c+HhxBa09l0dQGZiyABJjUNSw3uGIONpmguX8Fx3/lMyqe6r9wGEH3Uz+laHF/DPEXBNy/JJBIKkCfbYH1AH0qdjugi78JWLZ/8AuOY8OnoHBI9IFB3k5QiZ4m9ezEWrZWSI/wDUx1GaOs/CSSWNwrIAwCNMADBx23M71n8y5JbWAWZh38NG676pknpMdKWi3lk9WY3MOacFoe3w/CuNSkC5cuSVMRqCiR+dOLFtlh5tf9ynT6ZIH9hVv8En4WQCDhm0iem2B+VWC2y/J4gnYo0gjtpmIPaMVSaMmEcu4Rl87WQwIgXLcMrep0/Kds7GfpSqzg7l5T5Lzqx3GkAn3jLfWlTpDWRrwjp+T/CPlFw32BIt6CgKlC2CcuQTDdo9DRrfD1t7by1zU3iqHZ2JUyyBxnJ601KvP9RJraZtBAnw9wP8HcYKxusxQM93zEh7iKAIIgKRq61yFvmLagBhSyeX31ST/UxwSTOwiAAKVKt8O02yJmXdcrcwSGGQwZgVnSvl0kQdMic0De4fU0sxY92JYnA6n3pUq0ySaWjnyvitBfD8qVjk/YV0PK/h9G3JxG+f98UqVeXkyzcqbPGz58jdWHcfZtcPA8PWT3MR9AM1kc05rfteGtt1QXDkqgkA27T7tP8A6pH0pUq78GGFKVbPV9J6fG8Km1s1eCbz3WMsV8oLEtjQikGcEMwJK7QxHrWA3GM9w3l8um27qphgpVoHQf3pUq6no6qRs/8AVLnDXOlwqWdZER8ylcHIOmcneOwrC5/xAuJw76QpIvEx1m4WH2mKalUvtZOXSLfg3/xEgkEI+0dvUVoc48zguATpOf8A3MB+UUqVP/gjD85SthdL3cgDR5Z7yN/v0qd/m1xLLeGdOmDO8hiBAnb5vWlSpUjdvZzlzmZkll1gks2oyWJyc/4rR5Q5i2UZlBYggM0RqIAgGNgOlKlV2Q0qNfjVhGVyX1kCW6AqMQOm+0VjcZxLW+IwZFtlgEAD5Q2ANgJ2pUqQonW8J8QXrdsi2Qp1vJgdYkgdDj2ri+P4ZQxIGTP036de9PSrnWpOjbwT5ZwKXB5pnHbqfajbvAKgbcnyCfec9+lKlWcpy5tWaxiuNh/w9zK9wpLWXC6o1DSPNGqJn/mu3+G/jZ794WLtldenNxSQDmI0Gf8A5U9KtISdgopxdnR8dyqy2WTtlSVMjY+XH5UBzLkujK3DAEwRMegM4+1KlW77HI+5jMisdjn17e4zWHz7hJX5jHaB36YxSpVNsKRxvMLr24uq/mDCDmdj1mdsVPlPMnuFtRIK5lSQTIOCZyBHv60qVUlobDuScO960pN3pGl0VkwRnSIz6zSpUq0oycnZ/9k=")
                            ],
                          )

                      ),
                    ),
                    SizedBox(
                      width: 540,
                      height: 220,
                      child: Card(
                          color: Colors.amberAccent,
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 20,),
                                  Text(
                                    "Goa",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      "Manali is a hill \nstation in the Kullu\ndistrict of Himachal Pradesh,\nIndia known for its scenic beauty\n, history, and culture. It's \nlocated in the Be\n"
                                  )
                                ],
                              ),
                              Image.network(
                                  height: 300,
                                  width: 250,
                                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/33/fc/f0/goa.jpg?w=1400&h=500&s=1",
                              )
                            ],
                          )

                      ),
                    ),
                    SizedBox(
                      width: 540,
                      height: 220,
                      child: Card(
                          color: Colors.amberAccent,
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(height: 20,),
                                  Text(
                                    "Udipur",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                      "Manali is a hill \nstation in the Kullu\ndistrict of Himachal Pradesh,\nIndia known for its scenic beauty\n, history, and culture. It's \nlocated in the Be\n"
                                  )
                                ],
                              ),
                              Image.network(
                                  height: 250,
                                  width: 300,
                                  "https://content.r9cdn.net/rimg/dimg/1a/a0/0cbc7343-lm-49820-168c48a151b.jpg?crop=true&width=1020&height=498",
                              )
                            ],
                          )

                      ),
                    ),
                  ]

                ),

              ],
            )

          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
