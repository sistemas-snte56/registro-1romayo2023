<li class="side-menus {{ Request::is('home') ? 'active' : '' }}">
    <a class="nav-link" href="/home">
        <i class=" fas fa-building"></i><span>Panel principal</span>
    </a>
</li>

{{--
{{ $user = Auth::user()->name;}}<br>
{{$roleName = Auth::user()->getRoleNames()->first();}}
--}}


@if (Auth::user()->getRoleNames()->first() === "Administrador")
    <li class="menu-header"><span> ADMINISTRADOR </span></li>
    @can('ver-user')
        <li class="side-menus {{ Request::is('users.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('users.index')}}">
                <i class="fas fa-user-shield"></i><span>Gestores</span>
            </a>
        </li>
    @endcan
    @can('ver-rol')
        <li class="side-menus {{ Request::is('roles.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('roles.index')}}">
                <i class="fas fa-user-tag"></i></i><span>Roles</span>
            </a>
        </li>
    @endcan
    @can('ver-region')
        <li class="side-menus {{ Request::is('regiones.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('regiones.index')}}">
                <i class="fas fa-table"></i><span>Regiones</span>
            </a>
        </li>
    @endcan
    @can('ver-delegacion')
        <li class="side-menus {{ Request::is('delegaciones.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('delegaciones.index')}}">
                <i class="fas fa-table"></i><span>Delegaciones</span>
            </a>
        </li>
    @endcan
    @can('ver-delegacion')
        <li class="side-menus {{ Request::is('usuarios.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('usuarios.index')}}">
                <i class="fas fa-table"></i><span>Usuarios</span>
            </a>
        </li>
    @endcan
@elseif(Auth::user()->getRoleNames()->first() === "Supervisor")
    <li class="menu-header"><span> SUPERVISOR </span></li>
    @can('ver-rol')
        <li class="side-menus {{ Request::is('roles.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('roles.index')}}">
                <i class="fas fa-user-tag"></i></i><span>Roles</span>
            </a>
        </li>
    @endcan
    @can('ver-region')
        <li class="side-menus {{ Request::is('regiones.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('regiones.index')}}">
                <i class="fas fa-table"></i><span>Regiones</span>
            </a>
        </li>
    @endcan
    @can('ver-delegacion')
        <li class="side-menus {{ Request::is('delegaciones.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('delegaciones.index')}}">
                <i class="fas fa-table"></i><span>Delegaciones</span>
            </a>
        </li>
    @endcan
    @can('ver-delegacion')
        <li class="side-menus {{ Request::is('usuarios.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('usuarios.index')}}">
                <i class="fas fa-table"></i><span>Usuarios</span>
            </a>
        </li>
    @endcan
@elseif(Auth::user()->getRoleNames()->first() === "Editor")
    <li class="menu-header"><span> USUARIO </span></li>
        <li class="side-menus {{ Request::is('usuario.index') ? 'active' : '' }}">
            <a class="nav-link" href="{{route('usuario.index')}}">
                <i class="fas fa-table"></i><span>Administrar Usuarios</span>
            </a>
        </li>
@endif