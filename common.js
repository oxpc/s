/* Shared helpers for student + teacher pages */
const $=s=>document.querySelector(s);
const L='ABCDEFGH';
const esc=s=>String(s??'').replace(/[&<>'"]/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;',"'":'&#39;','"':'&quot;'}[c]));
const store=(s)=>s?sessionStorage:localStorage;
const lsGet=(k,s)=>{try{return store(s).getItem(k)}catch{return null}};
const lsSet=(k,v,s)=>{try{store(s).setItem(k,v)}catch{}};
const lsDel=k=>{try{localStorage.removeItem(k);sessionStorage.removeItem(k)}catch{}};
const lsJSON=(k,d)=>{try{return JSON.parse(lsGet(k))??d}catch{return d}};
const slug=s=>s.toLowerCase().normalize('NFKD').replace(/[^\p{L}\p{N}]+/gu,'-').replace(/^-+|-+$/g,'').slice(0,60)||'quiz';
let toastT;
function toast(m){const t=$('#toast');t.textContent=m;t.hidden=false;clearTimeout(toastT);toastT=setTimeout(()=>t.hidden=true,3200)}
function setStatus(id,msg,type='info'){const e=$('#'+id);if(e){e.textContent=msg;e.className='status '+type}}
function download(name,text,type){const a=document.createElement('a');a.href=URL.createObjectURL(new Blob([text],{type}));a.download=name;a.click();URL.revokeObjectURL(a.href)}
