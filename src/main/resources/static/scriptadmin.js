var admin = new Vue({
    el: '#adminapp',
    data: {
        Persons: [],
    },
    methods: {
        getStatusInfo: function () {
            this.$http.get('http://localhost:8080/Person/Status').then(function (response) {
                this.Persons = response.data;
                console.log(response)
            }), function (error) {
                console.log("Ошибка")
            }
        },
    },
    created: function() {
        this.getStatusInfo();
    }
})
