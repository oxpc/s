<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="color-scheme" content="light dark">
<title>Quiz hub - Teacher Portal</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Figtree:wght@400;500;600;700&display=swap" rel="stylesheet">
<style>
:root{--bg:#f3f6f5;--panel:#fff;--ink:#112220;--muted:#5b6f6c;--line:#d6dfdd;--accent:#0e7c6b;--accent-ink:#fff;--soft:#e3f2ef;--ok:#17803f;--bad:#c2412d;--warn:#9a6700;--shadow:0 1px 2px rgba(17,34,32,.06),0 10px 28px rgba(17,34,32,.06)}
@media(prefers-color-scheme:dark){:root{--bg:#0c1413;--panel:#132120;--ink:#e6efed;--muted:#8fa5a1;--line:#243736;--accent:#3cc9b0;--accent-ink:#06201b;--soft:#173331;--ok:#4cd18a;--bad:#ff8b78;--warn:#e3b341;--shadow:none}}
*{box-sizing:border-box}
[hidden]{display:none!important}
body{margin:0;background:var(--bg);color:var(--ink);font:400 1rem/1.55 Figtree,system-ui,-apple-system,"Segoe UI",Roboto,sans-serif;min-height:100vh}
:focus-visible{outline:2px solid var(--accent);outline-offset:2px}
main{max-width:980px;margin:0 auto;padding:clamp(1.5rem,5vw,3rem) 1.1rem 3rem}
h1{font-size:clamp(1.9rem,6vw,2.7rem);line-height:1.08;letter-spacing:-.03em;margin:0 0 .5rem;font-weight:700}
h2{font-size:1.2rem;margin:0 0 .6rem;letter-spacing:-.01em}
.lede{color:var(--muted);margin:0 0 1.6rem;max-width:56ch}
.panel{background:var(--panel);border:1px solid var(--line);border-radius:18px;padding:clamp(1rem,3vw,1.5rem);box-shadow:var(--shadow);margin-bottom:1.1rem}
.btn{font:inherit;font-weight:600;border:1px solid var(--line);background:var(--panel);color:inherit;padding:.6rem 1.05rem;border-radius:10px;cursor:pointer;transition:background .15s,transform .1s;text-decoration:none;display:inline-block}
.btn:hover{background:var(--soft)}
.btn:active{transform:scale(.98)}
.btn.primary{background:var(--accent);border-color:var(--accent);color:var(--accent-ink)}
.btn.primary:hover{filter:brightness(1.08)}
.btn.ghost{border-color:transparent;background:transparent;color:var(--muted)}
.btn.ghost:hover{background:var(--soft);color:var(--ink)}
.btn.danger{color:var(--bad)}
.btn.sm{padding:.3rem .7rem;font-size:.88rem}
.btn:disabled{opacity:.45;cursor:not-allowed}
.row{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center}
.muted{color:var(--muted)}
input[type=text],input[type=password],input[type=search],textarea,select{font:inherit;color:inherit;background:var(--bg);border:1.5px solid var(--line);border-radius:10px;padding:.55rem .8rem;width:100%}
textarea{min-height:200px;resize:vertical;font:.9rem/1.5 ui-monospace,monospace}
textarea.drag{border-color:var(--accent);background:var(--soft)}
label.f{display:block;font-weight:600;font-size:.9rem;margin:.9rem 0 .3rem}
label.f small{font-weight:400;color:var(--muted)}
.grid2{display:grid;grid-template-columns:1fr 1fr;gap:.8rem}
@media(max-width:560px){.grid2{grid-template-columns:1fr}}
.chk{display:flex;gap:.5rem;align-items:center;cursor:pointer;font-size:.95rem}
.chk input{accent-color:var(--accent);width:1.05rem;height:1.05rem}
.chip{display:inline-block;padding:.1rem .55rem;border-radius:99px;background:var(--soft);color:var(--ink);font-weight:600;font-size:.8rem}
.chip.ok{background:color-mix(in srgb,var(--ok) 18%,transparent);color:var(--ok)}
.chip.warn{background:color-mix(in srgb,var(--warn) 18%,transparent);color:var(--warn)}
.steps{counter-reset:s}
.steps>.panel>h2::before{counter-increment:s;content:counter(s);display:inline-grid;place-items:center;width:1.7rem;height:1.7rem;margin-right:.6rem;border-radius:50%;background:var(--accent);color:var(--accent-ink);font-size:.9rem}
.status{font-size:.92rem;margin:.6rem 0 0;min-height:1.3em}
.status.ok{color:var(--ok)}.status.err{color:var(--bad)}.status.info{color:var(--muted)}
.ed{border:1px solid var(--line);border-radius:12px;padding:.8rem .9rem;margin-top:.7rem;background:var(--bg)}
.ed.miss{border-color:var(--warn)}
.edh{display:flex;gap:.6rem;align-items:flex-start;font-weight:600;overflow-wrap:anywhere}
.edh span{flex:1;white-space:pre-wrap}
.ed .opt{display:flex;gap:.7rem;align-items:center;padding:.2rem 0;font-size:.97rem;cursor:default}
.ltr{flex:none;display:grid;place-items:center;width:1.75em;height:1.75em;border-radius:50%;font:inherit;font-size:.9em;font-weight:700;color:var(--muted);background:none;border:1.5px solid var(--line);cursor:pointer}
.ltr:hover{color:var(--accent);border-color:var(--accent)}
.ed .opt.ok .ltr{background:var(--ok);border-color:var(--ok);color:var(--accent-ink)}
.ed input{margin-top:.4rem;font-size:.9rem;padding:.4rem .7rem}
.list{list-style:none;margin:0;padding:0}
.list li{display:flex;flex-wrap:wrap;gap:.5rem;align-items:center;padding:.7rem 0;border-top:1px solid var(--line)}
.list li:first-child{border-top:0}
.list .t{flex:1 1 200px;min-width:0;overflow-wrap:anywhere}
.list .t small{display:block;color:var(--muted)}
.sticky{position:sticky;bottom:0;background:var(--panel);padding:.8rem 0 .2rem;margin-top:1rem;border-top:1px solid var(--line)}
.toast{position:fixed;left:50%;bottom:1.2rem;transform:translateX(-50%);background:var(--ink);color:var(--bg);padding:.65rem 1.1rem;border-radius:12px;font-weight:600;box-shadow:0 8px 30px rgba(0,0,0,.25);z-index:20;max-width:90vw}
.foot{margin-top:2rem;color:var(--muted);font-size:.85rem;text-align:center}
details{color:var(--muted);font-size:.92rem;margin-top:.8rem}
summary{cursor:pointer;font-weight:600;color:var(--ink)}
code{font:.88em ui-monospace,monospace;background:var(--bg);padding:.1em .35em;border-radius:5px}
.reg{max-width:420px;margin:clamp(2rem,14vh,6rem) auto 0}
.steps>.panel.nonum>h2::before{display:none}
</style>
</head>
<body>

<main id="app"></main>
<div class="toast" id="toast" role="status" hidden></div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.10.1/jszip.min.js"></script>
<script>
/* =====================================================================
   PASSWORD / PIN PROTECTION:
   - Set PIN to '123' (or any password).
   - Set PIN = ''; to turn the password OFF.
   ===================================================================== */
const PIN = '123';

/* Default repo settings */
const DEFAULT_REPO = 'oxpc/s';
const DEFAULT_BRANCH = 'main';

const $ = s => document.querySelector(s);
const esc = s => String(s ?? '').replace(/[&<>'"]/g, c => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', "'": '&#39;', '"': '&quot;' }[c]));
const L = 'ABCDEFGH';
const lsGet = (k, s) => { try { return (s ? sessionStorage : localStorage).getItem(k); } catch (e) { return null; } };
const lsSet = (k, v, s) => { try { (s ? sessionStorage : localStorage).setItem(k, v); } catch (e) {} };
const lsDel = k => { try { localStorage.removeItem(k); sessionStorage.removeItem(k); } catch (e) {} };
const slug = s => s.toLowerCase().normalize('NFKD').replace(/[^\p{L}\p{N}]+/gu, '-').replace(/^-+|-+$/g, '').slice(0, 60) || 'quiz';

let toastT;
function toast(m){ const t=$('#toast'); t.textContent=m; t.hidden=false; clearTimeout(toastT); toastT=setTimeout(()=>t.hidden=true,3200); }
function setStatus(id, msg, type='info'){ const e=$('#'+id); if(e){ e.textContent=msg; e.className='status '+type; } }

/* ---------- PIN Gate check ---------- */
function isProtected(){ return PIN && PIN.trim().length > 0; }
function isUnlocked(){ return !isProtected() || lsGet('qm-t-pin', true) === 'ok'; }

function checkAccess(){
  if(isUnlocked()){
    renderTeacherDashboard();
  } else {
    renderLockScreen();
  }
}

function renderLockScreen(){
  $('#app').innerHTML = `
  <div class="reg panel">
    <h1>Teacher Login</h1>
    <p class="lede">Enter your PIN or password to access the teacher dashboard.</p>
    <form id="lock-form" novalidate>
      <label class="f" for="pin-val">Password / PIN</label>
      <input type="password" id="pin-val" autocomplete="current-password" autofocus placeholder="Enter password">
      <p class="status err" id="pin-err" aria-live="polite"></p>
      <button class="btn primary" style="width:100%;margin-top:.6rem">Unlock</button>
    </form>
  </div>`;
  $('#pin-val').focus();
  $('#lock-form').onsubmit = e => {
    e.preventDefault();
    if($('#pin-val').value === PIN){
      lsSet('qm-t-pin', 'ok', true);
      checkAccess();
    } else {
      setStatus('pin-err', 'Incorrect password. Try again.', 'err');
      $('#pin-val').select();
    }
  };
}

/* ---------- Parser ---------- */
const OPT=/^\(?([A-Ha-h])(?:\)|[.:]\s|\s[-–—]\s)\s*(.+)$/,
  QN=/^(?:q(?:uestion)?\.?\s*)?(\d+)\s*[.):\-]\s*(.+)$/i,
  BN=/^(?:q(?:uestion)?\.?\s*(\d+)\s*[.):\-]?|(\d+)\s*[.):])$/i,
  ANS=/^(?:the\s+)?(?:correct(?:\s+(?:answer|option|choice))?|answer|ans\.?|key|solution)\s*(?:[:=\-–—]|\bis\b)\s*(.+)$/i,
  ANS2=/^(?:correct\s+)?(?:answer|ans)\.?\s+\(?([A-Ha-h])\)?[.)]?$/i,
  KEYLINE=/^(?:(?:q\s*)?\d+\s*[.):\-]?\s*\(?[A-Ha-h]\)?[\s.,;]*)+$/i,
  EXPL=/^(?:explanation|rationale|reason|why|note)\s*[:\-]\s*/i,
  MK=/\s*(?:[✓✔✅]|\((?:correct|answer|\*)\)|\[(?:correct|x|\*)\])\s*$/i,
  LM=/^(?:[✓✔✅]|\[x\])\s*/i,
  norm=s=>s.toLowerCase().replace(/[^\p{L}\p{N}]+/gu,' ').trim();

function resolve(s,o){
  s=s.trim(); const ns=norm(s);
  const k=o.findIndex(t=>{ const n=norm(t); return n&&(ns===n||(n.length>3&&ns.startsWith(n+' '))); });
  if(k>-1) return {a:k, e:ns===norm(o[k])?'':s.slice(o[k].length).replace(/^[\s.:,;\-–—)]+/,'')};
  const m=s.match(/^\(?([A-Ha-h]|[1-9])\)?(?=[.:\-–—)\s]|$)[.:\-–—)]?\s*(.*)$/);
  if(!m) return {a:-1, e:''};
  const a=/\d/.test(m[1])?+m[1]-1:L.toLowerCase().indexOf(m[1].toLowerCase());
  return {a, e:norm(m[2])===norm(o[a]||'')?'':m[2]};
}

function parse(raw){
  const all=[], key={}; let cur=null, blank=false;
  const opts=c=>c.o.length>1?c.o.length:c.p.length;
  const fin=()=>{
    const c=cur; cur=null; if(!c) return;
    let o=c.o, q=c.q;
    if(o.length>1){ if(c.p.length) q+='\n'+c.p.join('\n'); } else o=c.p;
    if(!q||o.length<2) return;
    let a=-1, e=c.x.join(' ');
    if(c.ar!=null){ const r=resolve(c.ar,o); a=r.a; e=(r.e+' '+e).trim(); }
    if(a<0&&c.mark!=null) a=c.mark;
    all.push({q:q.trim(),o,a,e,n:c.n});
  };
  const mk=(t,n)=>{ fin(); cur={q:t,o:[],p:[],x:[],a:-1,ar:null,mark:null,n}; };
  const add=(arr,t)=>{ let c=false; t=t.replace(MK,()=>(c=true,'')).replace(LM,()=>(c=true,'')).trim(); if(c) cur.mark=arr.length; arr.push(t); };
  const isNew=n=>!cur||opts(cur)>1||n===(cur.n??0)+1||(cur.n==null&&!cur.o.length&&!cur.p.length);
  for(let l of raw.replace(/\r/g,'').split('\n')){
    if(/^\s*```/.test(l)) continue;
    l=l.replace(/\*\*/g,'').replace(/`/g,'').trim().replace(/^#+\s*/,'').replace(/^>\s*/,'').replace(/^[-*•–]\s+/,'');
    if(!l||/^[-=_*]{3,}$/.test(l)){ blank=true; continue; }
    blank=false;
    if(/^(?:answer\s*key|answers|key)\s*:?$/i.test(l)) continue;
    let m;
    if(KEYLINE.test(l)){ for(const k of l.matchAll(/(\d+)\s*[.):\-]?\s*\(?([A-Ha-h])\)?/g)) key[k[1]]=k[2].toLowerCase(); continue; }
    if(cur&&cur.ar==null&&opts(cur)>1&&(m=l.match(ANS)||l.match(ANS2))){ cur.ar=m[1]; continue; }
    if(cur&&cur.ar==null&&(m=l.match(OPT))&&m[1].toUpperCase()===L[cur.o.length]){
      const segs=cur.o.length?[l]:l.split(/\s+(?=\(?[B-Hb-h](?:\)|\.\s))/);
      segs.forEach((s,k)=>{ const x=s.match(OPT); if(x&&x[1].toUpperCase()===L[cur.o.length]) add(cur.o,x[2]); else if(k) cur.o[cur.o.length-1]+=' '+s; });
      continue;
    }
    if((m=l.match(QN))&&isNew(+m[1])){ mk(m[2],+m[1]); continue; }
    if((m=l.match(BN))&&isNew(+(m[1]||m[2]))){ mk('',+(m[1]||m[2])); continue; }
    if(!cur){ mk(l,null); continue; }
    if(!cur.q){ cur.q=l; continue; }
    const done=cur.ar!=null;
    const nq=done?((blank&&!EXPL.test(l))||l.endsWith('?')):(opts(cur)>1&&l.endsWith('?'))||(blank&&opts(cur)>=2);
    if(nq){ mk(l,null); continue; }
    if(done) cur.x.push(l.replace(EXPL,''));
    else if(cur.o.length) cur.o[cur.o.length-1]+=' '+l;
    else add(cur.p,l);
  }
  fin();
  all.forEach((x,k)=>{ if(x.a<0){ const c=key[x.n||k+1]; if(c) x.a=L.toLowerCase().indexOf(c); } });
  return all.filter(x=>x.a<x.o.length).map(({q,o,a,e})=>({q,o,a,e}));
}

async function docxText(f){
  const zip=await JSZip.loadAsync(await f.arrayBuffer());
  const entry=zip.file('word/document.xml');
  if(!entry) throw new Error('Not a valid .docx file.');
  const xml=new DOMParser().parseFromString(await entry.async('string'),'application/xml');
  const on=(r,tag)=>{ const n=r.getElementsByTagName('w:rPr')[0]?.getElementsByTagName(tag)[0]; return !!n&&!['0','false','none'].includes(n.getAttribute('w:val')||''); };
  const lines=[];
  for(const p of xml.getElementsByTagName('w:p')){
    let t='',mark=true,any=false;
    for(const r of p.getElementsByTagName('w:r')){
      let s='';
      for(const n of r.childNodes){
        if(n.nodeName==='w:t') s+=n.textContent;
        else if(n.nodeName==='w:tab') s+=' ';
        else if(n.nodeName==='w:br') s+='\n';
      }
      if(!s.trim()){ t+=s; continue; }
      any=true; t+=s;
      if(!(on(r,'w:highlight')||on(r,'w:shd'))&&!on(r,'w:b')) mark=false;
    }
    t=t.replace(/[ \t]+/g,' ').trim();
    if(any&&mark&&OPT.test(t)) t+=' ✓';
    lines.push(t);
  }
  const first=lines.findIndex(l=>QN.test(l)&&+l.match(QN)[1]===1);
  return (first>0?lines.slice(first):lines).join('\n');
}

/* ---------- GitHub API Integration ---------- */
let cfg={ repo:lsGet('qm-repo')||DEFAULT_REPO, branch:lsGet('qm-branch')||DEFAULT_BRANCH, token:lsGet('qm-token',true)||lsGet('qm-token')||'' };
let D={ title:'', id:null, qs:[] };
let ghList=null;
let src;

const b64=s=>{ const b=new TextEncoder().encode(s); let r=''; b.forEach(x=>r+=String.fromCharCode(x)); return btoa(r); };
const unb64=s=>new TextDecoder().decode(Uint8Array.from(atob(s.replace(/\s/g,'')),c=>c.charCodeAt(0)));

async function gh(path, opt = {}) {
  // Fix: Avoid trailing slashes so GitHub API does not return 301 redirects that trigger CORS fetch failures
  const cleanPath = path ? '/' + path.replace(/^\/+/, '') : '';
  const url = `https://api.github.com/repos/${cfg.repo}${cleanPath}`;
  
  let r;
  try {
    r = await fetch(url, {
      ...opt,
      headers: {
        'Accept': 'application/vnd.github+json',
        'X-GitHub-Api-Version': '2022-11-28',
        'Authorization': 'Bearer ' + cfg.token.trim(),
        ...(opt.headers || {})
      }
    });
  } catch (err) {
    throw new Error('Connection failed. If you use Brave or an ad-blocker, please disable shields for this page.');
  }

  if (r.status === 404 && opt.allow404) return null;
  if (!r.ok) {
    let m = '';
    try { m = (await r.json()).message; } catch (_) {}
    const why = {
      401: 'Invalid or expired GitHub token. Please create a new token.',
      403: 'Token lacks permission. It needs "Contents: Read and write" on repository ' + cfg.repo,
      404: `Repository "${cfg.repo}" or branch "${cfg.branch}" was not found.`,
      409: 'The repository changed while saving. Try again.',
      422: 'GitHub refused change: ' + m
    }[r.status];
    throw new Error(why || m || ('GitHub error ' + r.status));
  }
  return r.status === 204 ? null : r.json();
}

async function getFile(path){
  const j=await gh(`contents/${path}?ref=${encodeURIComponent(cfg.branch)}`,{allow404:true,cache:'no-store'});
  return j?{sha:j.sha,text:unb64(j.content)}:null;
}
const putFile=(path,text,sha,msg)=>gh(`contents/${path}`,{method:'PUT',body:JSON.stringify({message:msg,content:b64(text),branch:cfg.branch,...(sha?{sha}:{})})});

async function readIndex(){
  const f=await getFile('quizzes/index.json');
  let list=[]; if(f){ try{ list=JSON.parse(f.text).quizzes||[]; }catch(e){} }
  return {sha:f?.sha, list};
}
async function writeIndex(mutate,msg){
  const {sha,list}=await readIndex(), next=mutate(list);
  await putFile('quizzes/index.json', JSON.stringify({quizzes:next},null,2)+'\n', sha, msg);
  return next;
}
const hasToken=()=>cfg.repo&&cfg.token;

function renderTeacherDashboard(){
  $('#app').innerHTML = `
  <div class="row" style="justify-content:space-between;align-items:baseline;margin-bottom:.4rem">
    <h1 style="margin:0">Teacher</h1>
    ${isProtected() ? `<button class="btn ghost sm danger" id="btn-lock" type="button">Lock</button>` : ''}
  </div>
  <p class="lede">Upload a Word or text file, check the answers, and publish. Students see it on the home page right away.</p>
  <div class="steps">
    <section class="panel" id="p-conn"></section>
    <section class="panel">
      <h2>Add a quiz</h2>
      <div class="row">
        <button class="btn" id="up" type="button">Upload .docx or text file</button>
        <input id="file" type="file" accept=".txt,.md,.docx,text/plain,application/vnd.openxmlformats-officedocument.wordprocessingml.document" hidden>
        <button class="btn ghost" id="sample" type="button">Use sample</button>
        <button class="btn ghost" id="clear" type="button">Clear</button>
      </div>
      <label class="f" for="src">…or paste the questions <small>(you can also drop a file here)</small></label>
      <textarea id="src" spellcheck="false" placeholder="1. Question text&#10;A. Option&#10;B. Option&#10;Answer: B"></textarea>
      <p class="status info" id="parse-status" aria-live="polite"></p>
      <details><summary>Supported formats</summary>
        <p>Numbered or plain questions, options lettered <code>A.</code> <code>A)</code> <code>(A)</code> or one per line. The answer can be <code>Answer: B</code>, the option text, a ✓ next to the option, or a key at the end like <code>1. B  2. C</code>. In Word files, bold or highlighted options count as correct.</p>
      </details>
    </section>
    <section class="panel" id="p-edit" hidden></section>
    <section class="panel nonum" id="p-list"></section>
  </div>
  <p class="foot">Only someone with your GitHub token can publish or delete.</p>`;

  const lk = $('#btn-lock');
  if(lk) {
    lk.onclick = () => {
      lsDel('qm-t-pin');
      checkAccess();
    };
  }

  drawConn();
  wireAdd();
  drawPublished();
  src = $('#src');
  src.value = lsGet('qm-draft') || '';
  parseSrc();
}

function drawConn(){
  const ok=hasToken();
  $('#p-conn').innerHTML=`<h2>Connect to GitHub</h2>
  ${ok&&!$('#p-conn').dataset.open?`<p class="muted" style="margin:0 0 .6rem">Publishing to <strong>${esc(cfg.repo)}</strong> (${esc(cfg.branch)}).</p><div class="row"><button class="btn sm" id="c-edit">Change</button><button class="btn sm ghost danger" id="c-out">Forget token</button></div>`:`
  <div class="grid2"><div><label class="f" for="c-repo">Repository</label><input type="text" id="c-repo" value="${esc(cfg.repo)}" placeholder="oxpc/s"></div>
  <div><label class="f" for="c-br">Branch</label><input type="text" id="c-br" value="${esc(cfg.branch)}"></div></div>
  <label class="f" for="c-tok">Access token <small>(fine-grained, Contents: Read and write)</small></label>
  <input type="password" id="c-tok" value="${esc(cfg.token)}" placeholder="github_pat_…" autocomplete="off">
  <label class="chk" style="margin-top:.7rem"><input type="checkbox" id="c-rem" ${lsGet('qm-token')?'checked':''}> Remember on this device</label>
  <div class="row" style="margin-top:.8rem"><button class="btn primary" id="c-go">Connect</button></div>`}
  <p class="status info" id="c-st" aria-live="polite"></p>`;
  
  const g=id=>$('#'+id);
  if(g('c-edit')) g('c-edit').onclick=()=>{ $('#p-conn').dataset.open='1'; drawConn(); };
  if(g('c-out')) g('c-out').onclick=()=>{ cfg.token=''; lsDel('qm-token'); ghList=null; delete $('#p-conn').dataset.open; drawConn(); drawPublished(); drawEditor(); };
  
  if(g('c-go')) g('c-go').onclick=async()=>{
    // Fix: Automatically clean repository input if full URL was pasted
    const rawRepo = g('c-repo').value.trim();
    const repo = rawRepo.replace(/^https?:\/\/github\.com\//i, '').replace(/\.git$/i, '').replace(/^\/+|\/+$/g, '') || DEFAULT_REPO;
    const branch = g('c-br').value.trim() || DEFAULT_BRANCH;
    const token = g('c-tok').value.trim();

    if(!token) return setStatus('c-st', 'Please paste your GitHub token.', 'err');
    if(!/^[\w.-]+\/[\w.-]+$/.test(repo)) return setStatus('c-st', 'Repository must be in "owner/name" format (e.g. oxpc/s).', 'err');

    cfg = { repo, branch, token };
    setStatus('c-st', 'Connecting to GitHub…', 'info');

    try {
      await gh(''); // Test connection
      lsSet('qm-repo', cfg.repo);
      lsSet('qm-branch', cfg.branch);
      if(g('c-rem').checked) {
        lsSet('qm-token', cfg.token);
      } else {
        lsSet('qm-token', cfg.token, true);
      }
      delete $('#p-conn').dataset.open;
      drawConn();
      drawPublished();
      drawEditor();
      setStatus('c-st', 'Connected successfully!', 'ok');
    } catch(e) {
      setStatus('c-st', e.message, 'err');
    }
  };
}

function wireAdd(){
  src=$('#src');
  src.oninput=parseSrc;
  $('#up').onclick=()=>$('#file').click();
  $('#file').onchange=async e=>{ await loadFile(e.target.files[0]); e.target.value=''; };
  ['dragover','dragleave','drop'].forEach(t=>src.addEventListener(t,e=>{ e.preventDefault(); src.classList.toggle('drag',t==='dragover'); if(t==='drop') loadFile(e.dataTransfer.files[0]); }));
  $('#sample').onclick=()=>{
    D.id=null; D.title='Sample quiz';
    src.value=`1. Which property identifies your app?\nA) Namespace\nB) Application ID\nAnswer: B`;
    parseSrc();
  };
  $('#clear').onclick=()=>{ D={title:'',id:null,qs:[]}; src.value=''; parseSrc(); src.focus(); };
}

async function loadFile(f){
  if(!f) return;
  try{
    src.value=/\.docx$/i.test(f.name)?await docxText(f):await f.text();
    if(!D.title) D.title=f.name.replace(/\.[^.]+$/,'').replace(/[_-]+/g,' ').trim();
    D.id=null;
    parseSrc();
  }catch(err){ setStatus('parse-status',err.message,'err'); }
}

function parseSrc(){
  lsSet('qm-draft',src.value,true);
  const old=D.qs, qs=parse(src.value);
  qs.forEach(q=>{ if(q.a<0){ const m=old.find(o=>o.q===q.q&&o.o.length===q.o.length); if(m) q.a=m.a; } });
  D.qs=qs;
  setStatus('parse-status', D.qs.length ? `${D.qs.length} question(s) found.` : (src.value.trim() ? 'No questions recognized.' : 'Upload or paste questions to begin.'), D.qs.length?'ok':'info');
  drawEditor();
}

function drawEditor(){
  const el=$('#p-edit'); if(!el) return;
  if(!D.qs.length){ el.hidden=true; return; }
  el.hidden=false;
  const miss=D.qs.filter(q=>q.a<0).length;
  if(!el.dataset.built){
    el.dataset.built='1';
    el.innerHTML=`<h2>Check and publish</h2>
    <label class="f" for="d-title">Quiz title</label><input type="text" id="d-title" maxlength="100" placeholder="e.g. Lesson 1 Quiz">
    <div id="d-sum" class="row" style="margin:.9rem 0 .2rem"></div>
    <div id="d-list"></div>
    <div class="sticky"><div class="row"><button class="btn primary" id="d-pub">Publish to students</button><button class="btn" id="d-dl">Download JSON</button></div><p class="status info" id="d-st" aria-live="polite"></p></div>`;
    $('#d-title').oninput=e=>D.title=e.target.value;
    $('#d-list').onclick=e=>{
      const b=e.target.closest('[data-q]'); if(!b) return;
      const q=D.qs[+b.dataset.q];
      if(b.dataset.k!=null){ q.a=q.a===+b.dataset.k?-1:+b.dataset.k; drawEditor(); }
      else if(b.dataset.rm!=null){ D.qs.splice(+b.dataset.q,1); parseSrc(); }
    };
    $('#d-list').oninput=e=>{ if(e.target.dataset.e!=null) D.qs[+e.target.dataset.e].e=e.target.value; };
    $('#d-pub').onclick=publish;
    $('#d-dl').onclick=download;
  }
  if(document.activeElement!==$('#d-title')) $('#d-title').value=D.title;
  $('#d-sum').innerHTML=`<span class="chip">${D.qs.length} questions</span>${miss?`<span class="chip warn">${miss} without answer</span>`:''}`;
  $('#d-list').innerHTML=D.qs.map((q,i)=>`<div class="ed ${q.a<0?'miss':''}">
    <div class="edh"><b class="no">${i+1}.</b><span>${esc(q.q)}</span><button class="btn ghost sm danger" data-q="${i}" data-rm="1">Remove</button></div>
    ${q.o.map((t,k)=>`<div class="opt ${q.a===k?'ok':''}"><button class="ltr" data-q="${i}" data-k="${k}">${L[k]}</button><span>${esc(t)}</span></div>`).join('')}
    <input type="text" data-e="${i}" value="${esc(q.e)}" placeholder="Explanation (optional)"></div>`).join('');
}

function payload(){
  return { title: (D.title||'').trim()||'Untitled quiz', questions: D.qs.map(q=>({ q:q.q, o:q.o, a:q.a, e:q.e||'' })) };
}
function download(){
  const p=payload(), b=new Blob([JSON.stringify(p,null,2)],{type:'application/json'}), a=document.createElement('a');
  a.href=URL.createObjectURL(b); a.download=slug(p.title)+'.json'; a.click(); URL.revokeObjectURL(a.href);
}

async function publish(){
  if(!hasToken()) return setStatus('d-st','Connect to GitHub first (step 1).','err');
  const p=payload();
  if(!(D.title||'').trim()) return setStatus('d-st','Provide a quiz title first.','err');
  const btn=$('#d-pub'); btn.disabled=true; setStatus('d-st','Publishing…');
  try{
    const id=D.id||slug(p.title), path=`quizzes/${id}.json`, ex=await getFile(path);
    await putFile(path, JSON.stringify(p,null,2)+'\n', ex?.sha, `${ex?'Update':'Add'} quiz: ${p.title}`);
    const date=new Date().toISOString().slice(0,10);
    ghList=await writeIndex(l=>[{id,title:p.title,count:p.questions.length,updated:date},...l.filter(x=>x.id!==id)],`Update index`);
    D.id=id;
    setStatus('d-st','Published successfully.','ok');
    drawPublished(); toast('Published');
  }catch(e){ setStatus('d-st',e.message,'err'); }
  btn.disabled=false;
}

async function drawPublished(){
  const el=$('#p-list'); if(!el) return;
  el.innerHTML=`<h2>Published quizzes</h2><p class="muted" id="pl-st">${hasToken()?'Loading…':'Connect to GitHub to view published quizzes.'}</p><ul class="list" id="pl"></ul>`;
  if(!hasToken()) return;
  try{
    if(!ghList) ghList=(await readIndex()).list;
    $('#pl-st').textContent=ghList.length?'':'No published quizzes yet.';
    $('#pl').innerHTML=ghList.map(x=>`<li><div class="t"><strong>${esc(x.title)}</strong><small>${x.count} questions</small></div>
      <button class="btn sm" data-edit="${esc(x.id)}">Edit</button><button class="btn sm ghost danger" data-del="${esc(x.id)}">Delete</button></li>`).join('');
    $('#pl').onclick=async e=>{
      const ed=e.target.closest('[data-edit]'), dl=e.target.closest('[data-del]');
      if(ed){
        try{
          const f=await getFile(`quizzes/${ed.dataset.edit}.json`); if(!f) throw new Error('File not found.');
          const j=JSON.parse(f.text); D={title:j.title, id:ed.dataset.edit, qs:j.questions.map(q=>({...q}))};
          src.value=D.qs.map((q,i)=>`${i+1}. ${q.q}\n${q.o.map((t,k)=>`${L[k]}. ${t}`).join('\n')}${q.a>-1?`\nAnswer: ${L[q.a]}`:''}`).join('\n\n');
          $('#p-edit').dataset.built=''; parseSrc();
          $('#p-edit').scrollIntoView({behavior:'smooth'});
        }catch(err){ toast(err.message); }
      }else if(dl){
        const id=dl.dataset.del;
        if(!confirm(`Delete this quiz?`)) return;
        try{
          const f=await getFile(`quizzes/${id}.json`);
          if(f) await gh(`contents/quizzes/${id}.json`,{method:'DELETE',body:JSON.stringify({message:`Delete quiz`,sha:f.sha,branch:cfg.branch})});
          ghList=await writeIndex(l=>l.filter(x=>x.id!==id),`Remove quiz`);
          drawPublished(); toast('Deleted');
        }catch(err){ toast(err.message); }
      }
    };
  }catch(e){ $('#pl-st').textContent=e.message; }
}

// Initialise
checkAccess();
</script>
</body>
</html>
