<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ page isELIgnored="false" %>
<html>
<head>
    <title>Mari Vs. Market Calculator - tooki.app</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="/favicon.ico?v=4" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-VJB0JCY7T5"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-VJB0JCY7T5');
    </script>
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1335895323165412"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-dark-5@1.1.3/dist/css/bootstrap-nightfall.min.css" rel="stylesheet">
    <style>

        @media (min-width: 992px) and (max-width: 1200px) {
            .modal-xl {
                max-width: 90%;
            }
        }

    </style>
</head>
<div class="modal modal-signin position-static d-block bg-secondary py-5" tabindex="-1" role="dialog" id="modalSignin">
    <div class="modal-dialog" role="document">
        <div class="modal-content rounded-5 shadow">
            <div class="modal-header p-5 pb-4 border-bottom-0">
                <div class="row">
                    <div class="col-sm-12" style="display:table;">
                        <h2 class="fs-5 fw-bold" style="vertical-align: middle;display: table-cell;">
                            <a class="btn btn-outline-light btn-sm" href="/">
                                <svg
                                        xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-return-left" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd" d="M14.5 1.5a.5.5 0 0 1 .5.5v4.8a2.5 2.5 0 0 1-2.5 2.5H2.707l3.347 3.346a.5.5 0 0 1-.708.708l-4.2-4.2a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 8.3H12.5A1.5 1.5 0 0 0 14 6.8V2a.5.5 0 0 1 .5-.5z"/>
                                </svg> Back
                            </a>
                            <c style="vertical-align: middle;margin-left:5px;">Mari Vs. Market Calculator</c>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="modal-body p-5 pt-0">
                <form action="${pageContext.request.contextPath}/calc/mariCalc" method="post"><%--表明是第1个User对象的username age--%>
                    <div class="form-floating mb-3">
                        <input type="number" min="0" class="form-control rounded-4" id="exchange_rate_gold" placeholder="700" name="exchange_rate_gold">
                        <label for="exchange_rate_gold">Gold per 95 Blue Crystals</label>
                        <small class="text-muted mt-1">You can find this number on the "Buy Crystals" tab of the currency exchange in-game.</small>
                    </div>
                    <input class="w-100 mb-2 btn btn-lg rounded-4 btn-primary"  type="submit" value="计算">
                </form>
                <table id="results_table" style="display: inline-table;" class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th scope="col">Item Name</th>
                        <th scope="col">Gold per unit</th>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/harmony_leapstone.png"> Harmony Leapstone
                        </td>
                        <td class="align-middle">${Harmony_Leapstone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/life_leapstone.png"> Life Leapstone
                        </td>
                        <td class="align-middle">${Life_Leapstone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/honor_leapstone.png"> Honor Leapstone
                        </td>
                        <td class="align-middle">${Honor_Leapstone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/great_honor_leapstone.png"> Great Honor Leapstone
                        </td>
                        <td class="align-middle">${Great_Honor_Leapstone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/harmony_shard_pouch.png"> Harmony Shard Pouch (M)
                        </td>
                        <td class="align-middle">${Harmony_Shard_PouchM}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/life_shard_pouch.png"> Life Shard Pouch (S)
                        </td>
                        <td class="align-middle">${Life_Shard_PouchS}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/honor_shard_pouch.png"> Honor Shard Pouch (S)
                        </td>
                        <td class="align-middle">${Honor_Shard_PouchS}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/guardian_stone_fragment.png"> Guardian Stone Fragment
                        </td>
                        <td class="align-middle">${Guardian_Stone_Fragment}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/guardian_stone.png"> Guardian Stone
                        </td>
                        <td class="align-middle">${Guardian_Stone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/guardian_stone_crystal.png"> Guardian Stone Crystal
                        </td>
                        <td class="align-middle">${Guardian_Stone_Crystal}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/destruction_stone_fragment.png"> Destruction Stone Fragment
                        </td>
                        <td class="align-middle">${Destruction_Stone_Fragment}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/destruction_stone.png"> Destruction Stone
                        </td>
                        <td class="align-middle">${Destruction_Stone}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/destruction_stone_crystal.png"> Destruction Stone Crystal
                        </td>
                        <td class="align-middle">${Destruction_Stone_Crystal}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/stars_breath.png"> Star's Breath
                        </td>
                        <td class="align-middle">${Stars_Breath}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/moons_breath.png"> Moon's Breath
                        </td>
                        <td class="align-middle">${Moons_Breath}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/solar_grace.png"> Solar Grace
                        </td>
                        <td class="align-middle">${Solar_Grace}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/solar_blessing.png"> Solar Blessing
                        </td>
                        <td class="align-middle">${Solar_Blessing}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/solar_protection.png"> Solar Protection
                        </td>
                        <td class="align-middle">${Solar_Protection}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/t2_gem_chest.png"> T2 Gem Chest
                        </td>
                        <td class="align-middle">${T2_Gem_Chest}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/t3_gem_chest.png"> T3 Gem Chest (x6)
                        </td>
                        <td class="align-middle">${T3_Gem_Chestx6}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/t3_gem_chest.png"> T3 Gem Chest (x20)
                        </td>
                        <td class="align-middle">${T3_Gem_Chestx20}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/caldarr_fusion_material.png"> Caldarr Fusion Material
                        </td>
                        <td class="align-middle">${Caldarr_Fusion_Material}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/simple_oreha_fusion_material.png"> Simple Oreha Fusion Material
                        </td>
                        <td class="align-middle">${Simple_Oreha_Fusion_Material}</td>
                    </tr>
                    <tr>
                        <td>
                            <img style="width:30px" src="/assets/icons/basic_oreha_fusion_material.png"> Basic Oreha Fusion Material
                        </td>
                        <td class="align-middle">${Basic_Oreha_Fusion_Material}</td>
                    </tr>
                    </thead>
                    <tbody id="results_table_body"></tbody>
                </table>
                <!-- end default results table -->
            </div>
            <div class="modal-footer" style="text-align:center;display:block;">
                <div class="col-sm-12">
                    <a style="margin:5px;" href="/updates" class="text-muted">Updates
                        </small>
                    </a>
                    <a style="margin:5px;" href="/contact" class="text-muted">Contact
                        </small>
                    </a>
                    <a style="margin:5px;" href="/terms" class="text-muted">Terms & Conditions
                        </small>
                    </a>
                    <a style="margin:5px;" href="/privacy-policy" class="text-muted">Privacy Policy</a>
                </div>
                <div class="col-sm-12">
                    <!--<div class="d-grid gap-2 col-3 mx-auto mt-2">-->
                    <div class="mt-2">
                        <a href="/index.jsp" class="btn btn-outline-secondary">Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer>
    <script src="/assets/js/mari-vs-market-v2.js?v=1.0.2"></script>
</footer>
</html>
