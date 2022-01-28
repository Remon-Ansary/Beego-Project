package routers

import (
	"beegoproject/controllers"

	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/", &controllers.CategoryController{})
}
func init() {
	beego.Router("/new", &controllers.CatController{})
}
func init() {
	beego.Router("/breed", &controllers.BreedController{})
}
