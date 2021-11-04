class User {

    constructor(id, username, addressNumber, street, postalCode, city, country,administrator) {
        this.id = id;
        this.username = username;
        this.addressNumber = addressNumber;
        this.street = street;
        this.postalCode = postalCode;
        this.city = city;
        this.country = country;
        this.administrator = administrator;
        this.fullAddress = function() {
            return addressNumber + " " + street + "\n" + postalCode + " " + city + "\n" + country;
        }
    }

    constructor() {
        this.id = null;
        this.username = null;
        this.addressNumber = null;
        this.street = null;
        this.postalCode = null;
        this.city = null;
        this.country = null;
        this.administrator = false;
        this.fullAddress = null;
    }

}

module.exports =  { User };