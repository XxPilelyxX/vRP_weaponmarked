const shopmarked = new Vue({
    el: "#shopmarked",

    data: {
        // Shared
        ResourceName: "vrp_weaponshop",
        showShop1: false,
        showShop2: false,
        showShop3: false,
        weapon1: null,
        weapon2: null,
        weapon3: null,
        weapon4: null,
        weapon5: null,
        weapon6: null,
        weapon7: null,
        weapon8: null,
        weapon9: null,

    },

    methods: {

        // START OF MAIN MENU
        OpenShopMenu1(weapon1, weapon2, weapon3) {
            this.showShop1     = true
            this.showShop2     = false;
            this.showShop3     = false;
            this.weapon1       = weapon1;
            this.weapon2       = weapon2;
            this.weapon3       = weapon3;
        },

        OpenShopMenu2(weapon4, weapon5, weapon6) {
          this.showShop1     = false
          this.showShop2     = true;
          this.showShop3     = false;
          this.weapon4       = weapon4;
          this.weapon5       = weapon5;
          this.weapon6       = weapon6;
        },

        OpenShopMenu3(weapon7, weapon8, weapon9) {
          this.showShop1     = false
          this.showShop2     = false;
          this.showShop3     = true;
          this.weapon7       = weapon7;
          this.weapon8       = weapon8;
          this.weapon9       = weapon9;
        },

        CloseMenu() {
            axios.post(`http://${this.ResourceName}/CloseMenu`, {}).then((response) => {
                this.showShop1        = false;
                this.showShop2        = false;
                this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseMenu1() {
            axios.post(`http://${this.ResourceName}/ChooseMenu1`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseMenu2() {
            axios.post(`http://${this.ResourceName}/ChooseMenu2`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseMenu3() {
            axios.post(`http://${this.ResourceName}/ChooseMenu3`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon1() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon1`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon2() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon2`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon3() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon3`, {}).then((response) => {
                this.showShop1        = false;
                this.showShop2        = false;
                this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon4() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon4`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon5() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon5`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon6() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon6`, {}).then((response) => {
                this.showShop1        = false;
                this.showShop2        = false;
                this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon7() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon7`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon8() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon8`, {}).then((response) => {
              this.showShop1        = false;
              this.showShop2        = false;
              this.showShop3        = false;
            }).catch((error) => { });
        },

        ChooseWeapon9() {
            axios.post(`http://${this.ResourceName}/ChooseWeapon9`, {}).then((response) => {
                this.showShop1        = false;
                this.showShop2        = false;
                this.showShop3        = false;
            }).catch((error) => { });
        },
    },
});

// Listener from Lua CL
document.onreadystatechange = () => {
    if (document.readyState == "complete") {
        window.addEventListener("message", (event) => {
            if (event.data.type == "openShopMenu1") {
                shopmarked.OpenShopMenu1(event.data.weapon1, event.data.weapon2, event.data.weapon3);
            } else if (event.data.type == "openShopMenu2") {
                shopmarked.OpenShopMenu2(event.data.weapon4, event.data.weapon5, event.data.weapon6);
            } else if (event.data.type == "openShopMenu3") {
                shopmarked.OpenShopMenu3(event.data.weapon7, event.data.weapon8, event.data.weapon9);
            }
        });
    }
}
