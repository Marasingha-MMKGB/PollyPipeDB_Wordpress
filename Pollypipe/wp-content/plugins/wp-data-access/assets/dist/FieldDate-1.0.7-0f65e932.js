import{l as m,j as d,ch as g,cg as j,dx as o,b7 as O}from"./main-1.0.7.js";import{d as D}from"./FormContainer-1.0.7-b77312e7.js";import{u as U,a4 as y}from"./main-1.0.7-9bcf9658.js";import{L as Y}from"./useMobilePicker-1.0.7-72dd8d81.js";import{A as a}from"./AdapterDayjs-1.0.7-09fd8143.js";import{D as k}from"./DatePicker-1.0.7-438b5afb.js";import"./AdminTheme-1.0.7-e1a0758c.js";import"./iconBase-1.0.7-dd244ceb.js";import"./ActionsDml-1.0.7-c9050d88.js";import"./useAppLanguage-1.0.7-7d769d48.js";import"./CardActions-1.0.7-a34c40f3.js";import"./DialogContent-1.0.7-fca1f4d6.js";import"./TextField-1.0.7-db52d17f.js";import"./Close-1.0.7-d2499b42.js";import"./InputAdornment-1.0.7-45f92a3b.js";import"./dateViewRenderers-1.0.7-95ec4b9e.js";const Q=({appId:t,columnName:e,columnValue:p,columnMetaData:i,storeColumn:x,columnValidation:r,onColumnChange:L,metaData:T,storeTable:h,storeForm:A,formMode:f,locale:E})=>{m.debug(t,e,p,i,x,r,T,h,A,f,E);const b=U(),F=()=>"en",P=()=>O.OUTLINED;return d.jsx(Y,{dateAdapter:a,adapterLocale:F(),children:d.jsx(k,{label:i.formLabel,value:p?D(p):null,disabled:f===y.VIEW||f===y.UPDATE&&T.primary_key.includes(e),onChange:s=>{s!==null&&!D(s).isValid()?b(g({appId:t,columnName:e,columnError:!0,columnText:E.invalidDate,columnType:j.COLUMN})):(s===null?L(e,null):L(e,D(s).format("YYYY-MM-DD")),b(g({appId:t,columnName:e,columnError:!1,columnText:"",columnType:j.COLUMN})))},slotProps:{textField:{error:r==null?void 0:r.error,helperText:r!=null&&r.error?r==null?void 0:r.text:o(x,E.enterDate),variant:P(),required:i.is_nullable==="NO",inputProps:{className:x.classNames}}}})})};export{Q as default};
