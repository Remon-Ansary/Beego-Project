package controllers

import (
	"encoding/json"
	"log"

	// "github.com/beego/beego/v2/server/web"

	"github.com/beego/beego/v2/client/httplib"
	beego "github.com/beego/beego/v2/server/web"
	//"github.com/astaxie/beego"
)

type BeeferController struct {
	beego.Controller
}
type CatController struct {
	beego.Controller
}
type BreedController struct {
	beego.Controller
}
type CategoryController struct {
	beego.Controller
}

type Data1 []struct {
	ID     string `json:"id"`
	Url    string `json:"url"`
	Images string `json:"images"`
}
type Data2 []struct {
	Id   int    `json:"id"`
	Name string `json:"name"`
}
type Data3 []struct {
	Id   string `json:"id"`
	Name string `json:"name"`
}

func (c *CatController) Get() {

	breed := c.GetString("breed")
	limit := c.GetString("limit")
	page := c.GetString("page")
	mime := c.GetString("mime_types")
	categories := c.GetString("category")
	req := httplib.Get("https://api.thecatapi.com/v1/images/search")

	req.Header("x-api-key", `e90ccfd6-8b42-4a31-8600-54bf7fb10ce7`)
	req.Param("page", page)
	req.Param("limit", limit)
	req.Param("breed_id", breed)
	req.Param("mime_types", mime)
	req.Param("category_ids", categories)
	req.Param("page", "1")

	resp, err := req.String()
	if err != nil {
		log.Fatal(err)
	}

	var result Data1
	json.Unmarshal([]byte(resp), &result)
	c.Data["json"] = result
	c.ServeJSON()

}

func (c *CategoryController) Get() {

	breed := c.Ctx.Input.Param("breed_id")
	order := c.Ctx.Input.Param("mime_types")
	category := c.Ctx.Input.Param("category_ids")

	page := c.GetString("page")
	req := httplib.Get("https://api.thecatapi.com/v1/images/search")

	req2 := httplib.Get("https://api.thecatapi.com/v1/categories")
	req3 := httplib.Get("https://api.thecatapi.com/v1/breeds")
	req.Header("x-api-key", `31cf5af0-bb4d-4275-971c-0e161cbdfa0b`)

	req.Param("limit", "9")
	req.Param("category_ids", category)
	// req.Param("page", "")
	req.Param("breed_id", breed)
	req.Param("mime_types", order)
	req.Param("page", page)

	resp2, _ := req2.String()
	resp3, _ := req3.String()
	// fmt.Println(resp2)

	resp, err := req.String()
	if err != nil {
		log.Fatal(err)
	}

	var result Data1
	json.Unmarshal([]byte(resp), &result)
	c.Data["json"] = result
	// c.ServeJSON()
	c.Data["jsondata"] = &result
	c.TplName = "index.tpl"

	//category
	var result2 Data2
	json.Unmarshal([]byte(resp2), &result2)
	c.Data["json"] = result2
	c.Data["jsondata1"] = &result2

	//breeds
	var result3 Data3
	json.Unmarshal([]byte(resp3), &result3)
	// c.Data["json"] = result3
	c.Data["jsondata2"] = &result3
	// c.ServeJSON()

}

func (c *BreedController) Get() {

}
