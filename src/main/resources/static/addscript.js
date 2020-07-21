var add = new Vue({
    el: '#adminapp',
    data: {
        card_id: '',
        name: '',
    },
    methods: {
        AddNewPerson: function () {
            this.$http.post('http://localhost:8080/Person', {
                "id": this.card_id,
                "name": this.name,
            }).then(res2 => {
                console.log(res2.body)
                window.location.reload()
            })
        },
    },
    created: function() {

    }
})
