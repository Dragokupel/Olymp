var app = new Vue({
    el: '#app',
    data: {
        card_id: '',
        Persons: [],
        Check: []
    },
    methods: {
        getPersonInfo: function () {
            if (this.card_id != "") {
                this.$http.get('http://localhost:8080/Person/' + this.card_id).then(function (response) {
                    if (response.data != null) {
                        this.Persons = response.data;
                        console.log(response.data);
                        console.log(this.card_id);
                        document.getElementById('person-inf').innerHTML = '<p>Номер вашей карты: ' + response.data.id + '</p>\n' +
                            '<p>Ваше ФИО: ' + response.data.name + '</p>\n';
                        if (response.data.status == false) {
                            document.getElementById('time_on').style.visibility = 'visible'
                            document.getElementById('time_off').style.visibility = 'hidden'
                        } else {
                            document.getElementById('time_on').style.visibility = 'hidden'
                            document.getElementById('time_off').style.visibility = 'visible'
                        }
                    } else {
                        alert("Указан несуществующий номер карты")
                        this.card_id = ""
                    }

                }, function (error) {

                });
                this.$http.get('http://localhost:8080/Check/time/' + this.card_id).then( function (responsetime) {
                    function daysInThisMonth() {
                        var now = new Date();
                        return new Date(now.getFullYear(), now.getMonth()+1, 0).getDate();
                    }
                    let disc = responsetime.data.length/daysInThisMonth();
                    if(disc < 0.2) {
                        document.getElementById('discount').innerHTML = '<p> Ваша скидка: 0%</p>'
                    }
                    if(disc >= 0.2) {
                        document.getElementById('discount').innerHTML = '<p> Ваша скидка: 10%</p>'
                    }
                    if(disc >= 0.6) {
                        document.getElementById('discount').innerHTML = '<p> Ваша скидка: 30%</p>'
                    }
                    console.log(responsetime.data.length)
                })
            } else {
                alert("Введите номер карты")
                this.card_id = ""
            }
        },
        putPersonInfoon: function () {
            this.$http.put('http://localhost:8080/Person/' + this.card_id, {
                "status": true
            }).then(res => {
                console.log(res.body)

            });
            this.$http.post('http://localhost:8080/Check', {
                "cardid": this.card_id,
                "timeon": new Date()
            }).then(res2 => {
                console.log(res2.body)
                window.location.reload()
            })
        },
        putPersonInfooff: function () {
            this.$http.put('http://localhost:8080/Person/' + this.card_id, {
                "status": false
            }).then(res => {

            });
            this.$http.get('http://localhost:8080/Check/' + this.card_id).then(function (response1) {

                this.Check = response1.data;
                this.putPersonInfoffupd(response1.data[0].id)
            }, function (error) {

            });
        },

        putPersonInfoffupd: function(id) {
            this.$http.put('http://localhost:8080/Check/'+ id +'/' + this.card_id , {
                "timeoff": new Date()
            }).then(res => {
                window.location.reload()
            }, function (error) {

            });
        },
    },
    created: function () {

    }
})
