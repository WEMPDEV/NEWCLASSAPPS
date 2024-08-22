import 'package:flutter/material.dart';

class Tripapp extends StatelessWidget {
  const Tripapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('BRO TRIP APP UI',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),),
        centerTitle: true,),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsetsDirectional.only(top: 160),
                width: 520,
                height: 750,
                color: Colors.blue[800],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              margin:
              const EdgeInsetsDirectional.symmetric(vertical: 100, horizontal: 10),
              width: 450,
              height: 400,
              color: Colors.redAccent,
              child: Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKD'
                  'QsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQA3AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAAECAwUGBwj/xABIEAABAwIDBQQFCAcFCQEAAAABAAIDBBEFEiEGEzFBUSJhgZEyQnGhwQcUFSNSkrHRJDNicoKi8BZDU+HxNWNzg5OUssLSF//EABYBAQEBAAAAAAAAAAAAAAAAAAABAv/EABkRAQEBAQEBAAAAAAAAAAAAAAABEQIxIf/aAAwDAQACEQMRAD8A8aTgJBOFQ6VrpWToGAT2TpIGSTp7IGsnAVjW3BSDNCUELJWU7J7IIAJ8qkAnQMAnCScIGKVlO10rIII4u3scR7snlr8UHZE0/aie0cWkOH4IH4aBMAntwJ5pwgdjbut1BVWU2FwdQrQ7KbgkHqFX2r2uT0QRLeqYhvNO42uCdQoP0bcoHLhuyLak3VZKROtkxQBjgpBMFKyBAJwknsoGThOnCCKkAkpNQTaNFdDHmY/WyqCKi0YR1Kor3J7lEwlEixTgIBNy63BMWEcQfJHBvRPlPtQZ4HJLLZHblrgdLexUmA8uHegpAT2Uyxw4pZUFdldSuDZbHg7snxUC1MBZw6IL3C5APq6KRsOAuous592u1Iu6/JSa5nBztTwQVSmzSohzswLQfR42VkkehOhb1VTJ3R3IJJtYDkgvzykscWtaQNL6XQ9THKP1jbXPFVOke9'
                  '2ZziT3pbx+XLnOXjZAw9MqeUHmqw4XvrdMSboBwnTBOoHTpk6B1IJhxUggVk4CScIHF0Sz0QhwiW8vYqJXUw5VmQNINszRqRew80VT43PLLHDh2DYaHveGR54DK4uPDVxt7kTUYjvLiJrnkfYGb8EfBhOITj6qhqXX/wB0R+K6RuIYvRQBslf9a7iYaeKMN7m2aChI67Ha+pfDHjVe0sY6Q7yuljbZvIAG10QFHsxjTuGGz+IA+Kc7JY5bTDpSfBDPxbFGgtdimJW6OrJT/wCypdimIX/2hWf9y/8ANFEP2XxsB28wufToEDU4RX04DpqOWNp4Zm2upnFa8anEa+w1NqyQfFZrqytnldKauq48TO/80VN0Tmem0j2hUkIqPEawENdNnA/xGhx8+PvUjUQym01KNfWj7PuQCgEgJrO6I8sZuhuHBzRxaRZw7+/wVJcoBMrybAJjE8C5FkS9xPEqqTVpQDEapw1vO6kW8EgEESByCiVMhRsgDCkFFOEEk6ZOgkOKcKIUkEk4UA9pcGA9s6BvMouLD66U/V0NU7/ku/JBRns4NAJJ6IgnsAm7QBzR1PgWLNO8bg0z3G1jI3Qe9Wu2fxaR+aaiiB6OqGNt/MqMR73SEACwXabIYQyio/pWrFpZBamafVbwLvHl/ms2HAqtlt5T4eDf166//jdam5xCRpzT4ebDtfpEh0/6ZRMPitQHi9+J0t3KmkjBpZHPAzmxBJ1t38lW2hkYCIS+d3MRF7wPFzQicOwWecOkkxGloW31bVVDi/8AhaGkW8QovPz1m1kD5SHxsJHDgqn00MItPJPm6siBaPN1'
                  '10PzLD4o5fnm0DXvI7O7pX3B5WOYD3lclWV8UTiz52ZQDYEAm/w96JbqqvIhjIEgdfQEcLexV0ZpxC7fVG5F8ubIXXNgbWHj5IWoqGTShzWSbu4uALGyHZMSd2SX5vVLrX71VHMfNPKY6GGeoINhkiJPkNVt1GBYnh7KWXFKf5u+pDsrH3DgBbVw5cT5Ln2UpkABbmF9ByWjT0NVT0r3RskbE05nbtiDRNCcou0gjUHos97C1xa7/VacGHNMDZ6ipDI3C4LnAX7xZD1raZrCYXFxbzAOqAAhRcNCrSFEhQUEJsuitLVEhBSQo2VpCrQZ904KgldBZdSBVV04d1SAukgNRNlJIaBdzhyC3sOw6SA9nDI6lz+D6iMvAH7vDxIW9sHi9JgWx+P5J4o8YrQI6cvuC1p7OltbAknyXIUcb5S97KGjI3eezXOZzHs17lpPXbUuFbTSR5aWl3Ef2YaYRj3AKFVhWPNhO8krjM09ppa4MA9vVc4/D3tjqT9B4ddrGvad7fT73HXhrwKElhDS5kmGYcwmISANl4H230PcoNKpgxGNxEok7810I6onYbOHvKx5CHZCaWBgcCLNffUd19FVDH2v1UTRewu6wQroaXFY4JLz00UzvVbI45QepAtfzt1utaDHKOojJq4sRfu25i2mayNjR1tawHfZep7DYjsxhWzVPGyopKeTJlILm7w95t1uT3XsjKza/B4YpPmtNI92UMDI2ZQ9pOpzWsLDx7lcTXk0D6nEY2uwbZTFq2PhvXzOczza0D3rLxai2likEcuEMoiW5rhwdYd5c91unJb23e1+KVuTD6WnbR0kTzJmmnDnSOPG5PL'
                  'jpYLhpq2cMd+nOfM83yQHK0dSSOJ7ghLUK6jro53x1b3PfGAX2dcNvyvwv/XJBuY5rc9tBx04+asY18rrSyOyDtu7VyT+f5lJjZqqYRxNGvLgAOp7lGhWFUn0jK6KOWGEtbmc+eQMY1o46kFdlhWB0zadzIY6msMkYzOp2v3d9b2c4NaeA5nguRpJaWhqWgS7yRjvSFgL9w5jxHguvxDbipfDHHSRjPkAfI/XUf680GjHhLaNmZlHSUwA9OeQyHyFgPNZOIYrTR5mOxCapIFiymtHH5t1/mXOVdZV4g7NVzulBN8p0b5KDY+7hzRBE9Y6b9RFHEL8WjM4/wARV1W7dYdTQHVz2CSRxOozageVvNZz3OILYwA3m4lEY04vmhpWSMc6ONrXSA6F1u0R3DUeCB2AOYHNN79Ei1V4NE8OqIS4Pawtc1w6G/5I58NlFBFqrcEW+NUuYgGcFWQiHNVRGqDGST5U+XuQMnHHuuE+XuVkDLzR8hmF0GpGGMknhkkflLhdrXNs/wC9oiKrD6aGBr4qRzu+SsjsfuyrNqHw/OJDAMsTtWAuzW8UbQ1UTYHtkYHSHQOt6I9qor3UQbf6EgPfHVuP4PKHlhj9I4ZIwdz3EfitcVNLe7oydO6ygX0f2R5IMF7WA/qJW+adj8vZbG6/Inkjp42vlcWCzeAVYgyjMUQO6oqWu7Mj49OT7XUDJLKMslTK8Hk4ud7ipPaXSGxAI01K1cL2ZxLEaZ9VAaYRMdYl8trkC9rc+CCOH0WHRUTp6uGqkcXWaW2jaBpzPHiOHVLEKWKJjHU8eVsjWvFiToQHDj3FdbQ7JMfTQtxHFo95FYtAnDY2'
                  'NdYahzDci3I8lh1wDJG7yANjYA2Nu8v2QAGjh0AVGA5hue7ipxuEUbg0gPl7LiTwb08fyRz6YjDRWPbYTyyZe4NNvgVlviLmbzO3XsgX1Fre7VKLWU9JI3KHkP63v7lpYdQSvLoJ5qeEwjMZZ5MjCzkQed/gVh3LHXvlJ/oLShlFVR5JjYR6gnUj+viorTe3DKVmY1Tqpw5xDI0n2nU+Sz5Kx9S7d0tOGg8mNLifE3Pw7lW10DLFlOZHAelM7Qexo+JKjU1sjmFkklmWtumdkHwCCirL2MyyPaCdC0OufIJ6X9Q62nZAHxQkn1rwGiw4I2kcGRvBF9LW5C4/zQbeykYkFX1G78u0teamsuOp8Qq6Ek0czod56WUDW3D8Sr/7Q4pzqb/vNB+CI6CSn7kLLBpwWUNocRv2nxOHQxhbmzU9XjdRIyWnjEEbLmZrSNbjTjbqgz5IyORVBYb8F1lThUbb3PBZktDGHkXQ1yYh7lMQdy0WU90QykPRRWS2mJ5K6GmIe0258lsR0RPqohlD1bx0Qc3isb31b5nSZw46v695UWwU26H6cWTH+7dELeDsw/BG43SyU9KRK2xv2eVxdZ24q5GFzKPeRgaFrM5HxCoubSOIuKgnvEVx7nKp8FQxubMwjuD/AMkGXMDiDGAR1ukJmgWD3N/dfZAQXVDAHOabHmCU8NXI2ZpDM9uLC7ioMqsrfSe72m/wR8GKljMsQYHjoAPFEaVDQUGJVtM6KYwQTOyzG2Z0PU25rqf7M7MRRnPjdQ+w4Mpj1/LXu9y88dUO37p4jle465TxPVWHFqgj9a4exalY64trq8YocApn07sHrKmeaOYue+'
                  'VmUNZpYi443WBi1bvZXPAtxsBy6IGOpkmkcHyvcXWuL2B9qlNG0OAkLgO4gpasmNGomB2awuL1mskLvGV5HuIQWGUnzmRsYc1rnEn6wWsANfgo1DssEcYN2sZoQb3soROEbLWu02NhxHEi58Peo0oqmNa7R7Tf1gCRfuVlGfSGbiLX4Kuokc6QnNlvcG3AH8knOdBTGTsknQXClUVlhGkj3PPQaBVVNVTiIxsZC0cbMZclZj5ZX6Fxt0Ci1pQXCW7rDQd6Kge0525gL81RR0E9fUMpqKnlnndqI4WF7j4Bdrg/yW4xU5ZMTfDh0PEh53klv3Rp70HFyPBecpu0aXHNHYbguJ4qT9HUU07R6ThZrR4kge9elnYXZWghDJW1NVKNXSyTlvkG2ACy6rDMCgG7p6ecMbwaKuWw/mUTQ+EbCQRQNlx2odvST+jwPGVvS7uZ9i25qyGjp2U1GxkMEYytYwW0/rmuecKaM/UwltjoS5zj5kqiWRzybuKo0Z6xzr5xb2uCz5KgF3pDzQzwFUWi6o0oaYdAjYaIGyFgMxt2brVo2k2EufXhlH5rKrIKBpsACtKkwjevAjbe/Kyg35xTRtc0Oc132W2I9vNaWF4qKaRp3ZHUZzdUc38omE1+FYEyobhjZaZ5tLUuN9ydLacdevBed02OVlJG+KNkDg4EXew3HvX0pTbQUFXSSUldTtlp3tyyMkAc1wPIhcbinyU7KYjO6bCsVqMODv7nSRjfZm1t4oPDhUPvd4JJPVXxVrWelET4r0yp+RWqJcaLaGgmt6IkjLT7jZZNR'
                  '8j+1cQO6bh9R/wqka+YCDlYcSoQ5plpnHr9Ww/FGYtjtHV4PDQUTHw5JM72mBrQ72EEkIub5NNsoRd2z9SR+xJG/wDByz5dj9poHWl2dxZveKORw8wLIMoSMLrueAfYk4wnhIfJHjZfHiLjAsVIva4oZeP3VMbJbRkabPYx4UEv/wAoAIp4oTcPN+fZV3zyJ7uzI9nSwtysjItidqZh2NncW9rqRzPxARkfybbZTC7dn6oX+25jfxcFdRlRvjccrRYcLnmnljcHAssWX1tx4LZ//'
                  'N9tIiM2EFve6qh0/nRcHyfbTOI3zqCAjjvJ72+6CmjmGw5dZCBbjfmhKuQTPAGjG3svRqf5M43kfSm0DbH1aanJPmdFp0+yGx2GC8lPV4hIOdTIQ37rAPfdSjyOngfPJuqeN8'
                  'sh4MjaXHyC6fDNg8crGiSohZQQnjJVvym3c0an3L0H6Yp6CLdYXRQUkfIQxNZ+CyavF5pXOL3kk9VDW5s6aDY/DJKKgmfNJK/PNK4Wzm1uHIIav2inlvlcR33XNSVlzqbqh9V+0qNGor5JHXc66BlnJJ1QzpwfXVTpAfXUFr5VQ6QKDnj7SrLh9pBIyd6rMhvxUSVFFHRVzuYB9uqMixKUeuQOgWCwj/Eb5ohjhcASsv8AvIOip8Se06uzX5ElH0+IxevGSeeV9lyodbjIFMSuHPxug7eLEKYgWfKzusCio66L1alv8Yyrg2VD/te9WfOpeo8XhB6C2uytzbxhHHR6Op6+cNBZIGjo51l5rHiD4XX37Bbla/lotGlxiolYctw0cZbW/oq6mPSoMfq4NLsNv2wihti9npxtP8QXlsuKloytmH3lny4s5p0k96K9g/ts/TJTg9e0s6u+UCdjy1jI4wOrgvIavFZJBYyPPcEC+pfbWRre66g9Zf8AKDUvJvPYdGkXQNRttO+953ffK8wdU6enf2JfO2jgLnvKJjuZtpZJ3X3kzjw9IlUPxyRvr2P7R/Jcaa+Q6XsO5R+dH+ihjq5ccc7+8cfD/NUyYw4j0ifYbLmt+TzTb72oN92Kmxu0G/iUK+qa/U3v7VliRPn6lDBzpb8CqnPKGuDzSzE80F286pjIFVqUvagnmule6rN+Sk0oqVimslmSugzAdVIPI5pJIJiaRvovI9iKbO8sFzdJJA3zmS9hYexM6ofm5apJIJsnc0byzS7lcaBNJiFVJ6Uh0FhbSySSCgzyfaKYzSH1kySBs7vt'
                  'FRLjzKSSBrnildJJAk90kkDglSCZJBIEp8xTJIHBJUg4p0kEsxCWclJJELMU7XG6SSKmCldJJB//2Q==',
                width: 200,
                height: 150,
                fit: BoxFit.cover,
              ),

            ),
            const SizedBox(height: 10,),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 550),
              child: const Text("LET'S MAKE\n A TRIP",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 670),
              child: const Text("Bromo Midnight Open Trip, a combined tour  package or sharing trip without staying and food departs every day",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 750),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  //primary: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}